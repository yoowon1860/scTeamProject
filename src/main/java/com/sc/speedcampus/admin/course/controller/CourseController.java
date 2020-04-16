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
import com.sc.speedcampus.admin.course.service.RegisterImageService;
import com.sc.speedcampus.admin.course.vo.CourseVO;

@Controller
@SessionAttributes({"course","courseList"})
public class CourseController {

	@Autowired
	private RegisterCourseService registerCourseService;
	@Autowired
	private DeleteCourseService deleteCourseService;
	@Autowired
	private GetCourseService getCourseService;
	@Autowired
	private GetCourseListService getCourseListService;
	@Autowired
	private RegisterImageService registerImageService;
	
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
	public String courseRegister(CourseVO vo) {
		
		registerCourseService.register(vo);
		return "redirect:courseList.mdo";
	}
	
	@RequestMapping(value="courseImage.mdo", method = RequestMethod.GET)
	public String courseImgView(CourseVO vo, Model model) {
		System.out.println("코스 이미지 등록 화면");
		model.addAttribute("course", getCourseService.getCourseService(vo));
		return "aCourses/courseImgInsert";
	}

	@RequestMapping(value="courseImgAction.mdo", method = RequestMethod.POST)
	public String vdRegister(CourseVO vo) {
	return "redirect:courseList.mdo";
	}
	
	
	
	@RequestMapping("courseDelete.mdo")
	public String courseDelete(CourseVO vo) {
		System.out.println("코스 삭제 실행");
		deleteCourseService.Delete(vo);
		return "redirect:courseList.mdo";
	}
}
