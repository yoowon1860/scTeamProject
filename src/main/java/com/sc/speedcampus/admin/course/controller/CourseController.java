package com.sc.speedcampus.admin.course.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sc.speedcampus.admin.course.service.DeleteCourseService;
import com.sc.speedcampus.admin.course.service.GetCourseListService;
import com.sc.speedcampus.admin.course.service.GetCourseService;
import com.sc.speedcampus.admin.course.service.RegisterCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;

@Controller
@SessionAttributes("course")
public class CourseController {

	@Autowired
	private RegisterCourseService registerCourseService;
	@Autowired
	private DeleteCourseService deleteCourseService;
	@Autowired
	private GetCourseService getCourseService;
	
	private GetCourseListService getCourseListService;
	
	@RequestMapping(value="courseRead.mdo", method = RequestMethod.GET)
	public String course(CourseVO vo, Model model) {
		System.out.println("코스 화면");
		model.addAttribute("course", getCourseService.getCourseService(vo));
		return "aCourses/courseRead";
	}
	
	@RequestMapping(value="courseList.mdo", method = RequestMethod.GET)
	public String courseList(CourseVO vo, Model model) {
		System.out.println("코스 목록 화면");
		model.addAttribute("courseList", getCourseListService.getCourseList(vo));
		return "aCourses/courseList";
	}
	
	@RequestMapping(value="courseInsert.mdo", method = RequestMethod.GET)
	public String courseRegisterView(CourseVO vo) {
		System.out.println("코스 등록 화면");
		return "aCourses/courseInsert";
	}
	
	@RequestMapping(value="courseInsert.mdo", method = RequestMethod.POST)
	public String courseRegister(MultipartHttpServletRequest request) {
		CourseVO vo = new CourseVO();
		vo.setName(request.getParameter("name"));
		vo.setPrice(request.getParameter("price"));
		vo.setYoutube(request.getParameter("youtube"));
		vo.setDetail(request.getParameter("detail"));
		
		//파일 업로드
		MultipartFile mf =request.getFile("img");
		String path = request.getRealPath("uploadFile/course");
		String fileName = mf.getOriginalFilename();
		File uploadFile = new File(path+"//"+fileName);
		try {
			mf.transferTo(uploadFile);
		}catch(IllegalStateException e) {
			e.printStackTrace();
		}catch(IOException e) {
			e.printStackTrace();
		}
		
		vo.setImg(fileName);
		System.out.println("코스 등록 실행");
		
		registerCourseService.register(vo);
		return "redirect:courseList.mdo";
	}
	
	@RequestMapping("courseDelete.mdo")
	public String courseDelete(CourseVO vo) {
		System.out.println("코스 삭제 실행");
		deleteCourseService.Delete(vo);
		return "redirect:courseList.mdo";
	}
}
