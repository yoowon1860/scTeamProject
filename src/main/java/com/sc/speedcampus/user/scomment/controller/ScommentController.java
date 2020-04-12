package com.sc.speedcampus.user.scomment.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.scomment.service.ScommentService;
import com.sc.speedcampus.user.scomment.vo.ScommentVO;

@Controller
public class ScommentController {

	@Autowired
	private ScommentService scommentService;
	
	@RequestMapping("insertScomment.do")
	public String insertScomment(ScommentVO vo, HttpSession session) {
		
		UserVO user = (UserVO)session.getAttribute("user");
		vo.setUserId(user.getEmail());
		
		scommentService.insertScomment(vo);
		
		return "redirect:studyRead.do?num=" + vo.getSnum();
	}
	
	@RequestMapping("updateScomment.do")
	public String updateScomment(ScommentVO vo) {
		scommentService.updateScomment(vo);
		
		return "redirect:studyRead.do?num=" + vo.getSnum();
	}
	
	@RequestMapping("deleteScomment.do")
	public String deleteScomment(ScommentVO vo) {
		System.out.println(vo);
		scommentService.deleteScomment(vo);
		
		return "redirect:studyRead.do?num=" + vo.getSnum();
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
}
