package com.sc.speedcampus.admin.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sc.speedcampus.admin.member.service.RegisterAdminService;
import com.sc.speedcampus.admin.member.vo.AdminVO;

@Controller
public class AdminController {
	
	@Autowired
	private RegisterAdminService registerAdminService;
	
	@RequestMapping("register.mdo")
	public String register(AdminVO vo) {
		registerAdminService.registerAdmin(vo);
		System.out.println("관리자 회원가입 완료");
		return "aMember/adminLogin";
	}
	
	@RequestMapping(value="register.mdo", method = RequestMethod.GET)
	public String registerView(AdminVO vo) {
		System.out.println("관리자 회원가입 화면 호출");
		return "aMember/adminRegister";
	}

}
