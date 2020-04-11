package com.sc.speedcampus.user.mycourse.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.service.GetMyCourseService;
import com.sc.speedcampus.user.mycourse.service.impl.GetMyCourseServiceImpl;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;

@Controller
public class MyCourseController {
	
	@Autowired
	private GetMyCourseServiceImpl myCourseService;
	
	@RequestMapping("myCourse.do")
	public String myCourseAllView(HttpServletRequest request) {
		System.out.println("�� ���� ���� ȭ�� ȣ��");
		HttpSession session = request.getSession(false);
		UserVO userVO = (UserVO)session.getAttribute("user") ;
		myCourseService.getMyCourseList(userVO);
		myCourseService.getMyCourseIng(userVO);
		myCourseService.getMyCourseEnd(userVO);
		return "my/userCourse";
	}

}
