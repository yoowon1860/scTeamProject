package com.sc.speedcampus.admin.course.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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
import com.sc.speedcampus.admin.course.service.UpdateCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;

@Controller
@SessionAttributes({"course","courseList"})
public class CourseController {

	@Autowired
	private RegisterCourseService registerCourse;
	@Autowired
	private DeleteCourseService deleteCourse;
	@Autowired
	private GetCourseService getCourse;
	@Autowired
	private GetCourseListService getCourseList;
	@Autowired
	private UpdateCourseService updateCourse;


	
	@RequestMapping(value="courseRead.mdo", method = RequestMethod.GET)
	public String course(CourseVO vo, Model model) {
		System.out.println("코스 화면");
		model.addAttribute("course", getCourse.getCourseService(vo));
		return "aCourses/courseRead";
	}
	
	@RequestMapping(value="courseList.mdo", method = RequestMethod.GET)
	public String courseList(CourseVO vo, Model model) {
		System.out.println("코스 목록 화면");
		model.addAttribute("courseList", getCourseList.getCourseList(vo));
		return "aCourses/courseList";
	}
	
	@RequestMapping(value="courseInsert.mdo", method = RequestMethod.GET)
	public String courseRegisterView(CourseVO vo)  {
		System.out.println("코스 등록 화면");
		return "aCourses/courseInsert";
	}
	
	@RequestMapping(value="courseInsert.mdo", method = RequestMethod.POST)
	public String courseRegister(CourseVO vo, MultipartHttpServletRequest mpRequest) throws Exception{
		System.out.println("코스 등록 실행");
		registerCourse.register(vo, mpRequest);
		return "redirect:courseList.mdo";
	}
	
	@RequestMapping(value="courseUpdate.mdo", method = RequestMethod.GET)
	public String courseUpdateView(CourseVO vo, Model model) {
		System.out.println("코스 수정 화면");
		model.addAttribute("course", getCourse.getCourseService(vo));
		return "aCourses/courseUpdate";
	}
	
	@RequestMapping(value="courseUpdate.mdo", method = RequestMethod.POST)
	public String courseUpdate(CourseVO vo) {
		System.out.println("코스 수정 실행");
		updateCourse.update(vo);
		return "redirect:courseList.mdo";
	}
	
		
	@RequestMapping("courseDelete.mdo")
	public String courseDelete(CourseVO vo) {
		System.out.println("코스 삭제 실행");
		deleteCourse.Delete(vo);
		return "redirect:courseList.mdo";
	}
}
