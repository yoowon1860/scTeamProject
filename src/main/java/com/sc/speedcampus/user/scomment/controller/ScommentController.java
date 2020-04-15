package com.sc.speedcampus.user.scomment.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.scomment.service.ScommentService;
import com.sc.speedcampus.user.scomment.vo.ScommentVO;

@Controller
public class ScommentController {

	@Autowired
	private ScommentService scommentService;
	
	/*
	@RequestMapping("insertScomment.do")
	public String insertScomment(ScommentVO vo, HttpSession session) {
		
		UserVO user = (UserVO)session.getAttribute("user");
		vo.setUserId(user.getEmail());
		
		scommentService.insertScomment(vo);
		
		return "redirect:studyRead.do?num=" + vo.getSnum();
	}*/
	
	// ´ñ±Û Ãß°¡
	@ResponseBody
	@RequestMapping("insertScomment.do")
	public void insertScomment(ScommentVO vo, HttpSession session){
		
		UserVO user = (UserVO)session.getAttribute("user");
		vo.setUserId(user.getEmail());
		
		scommentService.insertScomment(vo);
	}
	
	// ´ñ±Û ¼öÁ¤
	@ResponseBody
	@RequestMapping("updateScomment.do")
	public int updateScomment(ScommentVO vo, HttpSession session) throws Exception {
	 
	 int result = 0;
	 
	 UserVO user = (UserVO)session.getAttribute("user");
	 String userId = scommentService.idCheck(vo.getCnum());
	 if(user.getEmail().equals(userId)) {
	  
		 vo.setUserId(user.getEmail());
		 scommentService.updateScomment(vo);
		 result = 1;
	 }
	 
	 return result;
	} 
	
	// ´ñ±Û »èÁ¦
	@ResponseBody
	@RequestMapping("deleteScomment.do")
	public int getReplyList(ScommentVO vo, HttpSession session) throws Exception {

	 int result = 0;
	 UserVO user = (UserVO)session.getAttribute("user");
	 String userId = scommentService.idCheck(vo.getCnum());
	 System.out.println(user.getEmail() + " " + userId);
	 if(user.getEmail().equals(userId)) {
	  
	  vo.setUserId(user.getEmail());
	  scommentService.deleteScomment(vo);
	  result = 1;
	 }
	 
	 return result; 
	}
	
	// ´ñ±Û ¸ñ·Ï ºÒ·¯¿À±â
	@ResponseBody
	@RequestMapping(value="sCommentList.do", method=RequestMethod.GET)
	public List<ScommentVO> getScommentList(@RequestParam("snum") int snum){
		return scommentService.getScommentList(snum);
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
