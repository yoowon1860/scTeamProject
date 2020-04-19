package com.sc.speedcampus.user.course.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.admin.course.service.GetCourseListService;
import com.sc.speedcampus.admin.course.service.GetCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;
import com.sc.speedcampus.user.course.service.GetSelectCourseListService;

@Controller
@SessionAttributes({"courseList","course"})
public class UserCourseController {
	
	@Autowired
	private GetSelectCourseListService getSelect;
	@Autowired
	private GetCourseService getCourse;

	@RequestMapping(value="course1.do", method = RequestMethod.GET)
	public String course1View(String name, Model model) {
		System.out.println("������/spring ... ��� ������");
		name = "������";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	@RequestMapping(value="course2.do", method = RequestMethod.GET)
	public String course2View(String name, Model model) {
		System.out.println("������/spring ... ��� ������");
		name = "spring";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	@RequestMapping(value="course3.do", method = RequestMethod.GET)
	public String course3View(String name, Model model) {
		System.out.println("������/spring ... ��� ������");
		name = "java";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	@RequestMapping(value="course4.do", method = RequestMethod.GET)
	public String course4View(String name, Model model) {
		System.out.println("������/spring ... ��� ������");
		name = "���̽�";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	@RequestMapping(value="course5.do", method = RequestMethod.GET)
	public String course5View(String name, Model model) {
		System.out.println("������/spring ... ��� ������");
		name = "�˰�����";
		model.addAttribute("courseList", getSelect.getSelectCourseList(name));
		return "courses/courseAll";
	}
	
	@RequestMapping(value="courseDetail.do", method = RequestMethod.GET)
	public String courseDetail(CourseVO vo, Model model) {
		System.out.println("���� �� ������");
		model.addAttribute("course", getCourse.getCourseService(vo));
		return "courses/courseDetail";
	}
	
}