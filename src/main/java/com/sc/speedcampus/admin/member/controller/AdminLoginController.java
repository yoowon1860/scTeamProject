package com.sc.speedcampus.admin.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.admin.course.service.GetCourseListService;
import com.sc.speedcampus.admin.course.vo.CourseVO;
import com.sc.speedcampus.admin.member.service.GetAdminService;
import com.sc.speedcampus.admin.member.vo.AdminVO;



@Controller
public class AdminLoginController {
	
	@Autowired
	private GetAdminService getAdminService;

	@RequestMapping(value = "login.mdo", method = RequestMethod.GET)
	public String loginView(AdminVO vo) {
		System.out.println("관리자 로그인 화면 호출");
		return "aMember/adminLogin";
	}
	
	
	@RequestMapping("loginCheck.mdo")
	public String login(AdminVO vo, HttpSession session) {
		System.out.println("관리자 로그인 처리");
		AdminVO admin = getAdminService.getAdmin(vo);
		if (admin != null) {
			session.setAttribute("admin", admin);
			return "aCourses/courseList";
		} else {// 
			return "aMember/adminLogin";
		}

	}
	
	
	}

