package com.sc.speedcampus.user.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sc.speedcampus.user.member.service.GetUserService;
import com.sc.speedcampus.user.member.vo.UserVO;



@Controller
public class LoginController {
	
	@Autowired
	private GetUserService getUserService;

	@RequestMapping(value = "login.do", method = RequestMethod.GET)
	public String loginView(UserVO vo) {
		System.out.println("로그인 화면 호출");
		return "member/login";
	}
	
	
	@RequestMapping("loginCheck.do")
	public String login(UserVO vo, HttpSession session) {
		System.out.println("로그인 처리");
		UserVO user = getUserService.getUser(vo);
		if (user != null) {
			session.setAttribute("user", user);
			return "redirect:userHome.do";
		} else {// 
			return "member/login";
		}

	}
	
	 @RequestMapping(value = "/oauth", produces = "application/json", method = { RequestMethod.GET, RequestMethod.POST })
	 public String kakaoLogin(@RequestParam("code") String code) {
        System.out.println(access_token);
       return "home";
	 }


	
	
	}

