package com.sc.speedcampus.user.mycourse.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.service.GetMyCourseService;

@Controller
public class MyCourseController {
	
	@Autowired
	private GetMyCourseService myCourseService;
	
	@RequestMapping("myCourse.do")
	public String myCourseAllView(Model model, HttpServletRequest request) {
		/*System.out.println("�� ���� ���� ȭ�� ȣ��");
		
		myCourseService.getMyCourseList(userVO);
		myCourseService.getMyCourseIng(userVO);
		myCourseService.getMyCourseEnd(userVO);*/
		HttpSession session = request.getSession(false);
		UserVO userVO = (UserVO)session.getAttribute("user") ;
		String email = userVO.getEmail();
		System.out.println("��Ʈ�ѷ��̸���"+email);
		model.addAttribute("myCourseList", myCourseService.getMyCourseList(email));
		System.out.println("��Ʈ�ѷ�");
		return "my/userCourse";
	}
	


}
