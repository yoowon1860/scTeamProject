package com.sc.speedcampus.user.course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.admin.course.service.GetCourseListService;
import com.sc.speedcampus.admin.course.vo.CourseVO;
import com.sc.speedcampus.user.course.service.GetSelectCourseListService;

@Controller
@SessionAttributes("courseList")
public class UserCourseController {
	
	@Autowired
	private GetSelectCourseListService getSelect;

	@RequestMapping(value="course1.do", method = RequestMethod.GET)
	public String course1View(String name, Model model) {
		System.out.println("리눅스/spring ... 목록 페이지");
		name = "리눅스";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	@RequestMapping(value="course2.do", method = RequestMethod.GET)
	public String course2View(String name, Model model) {
		System.out.println("리눅스/spring ... 목록 페이지");
		name = "spring";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	@RequestMapping(value="course3.do", method = RequestMethod.GET)
	public String course3View(String name, Model model) {
		System.out.println("리눅스/spring ... 목록 페이지");
		name = "java";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	@RequestMapping(value="course4.do", method = RequestMethod.GET)
	public String course4View(String name, Model model) {
		System.out.println("리눅스/spring ... 목록 페이지");
		name = "파이썬";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	@RequestMapping(value="course5.do", method = RequestMethod.GET)
	public String course5View(String name, Model model) {
		System.out.println("리눅스/spring ... 목록 페이지");
		name = "알고리즘";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
}
