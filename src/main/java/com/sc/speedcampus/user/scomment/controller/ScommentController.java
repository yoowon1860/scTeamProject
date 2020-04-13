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
	
	@ResponseBody
	@RequestMapping("insertScomment.do")
	public void insertScomment(ScommentVO vo, HttpSession session){
		
		UserVO user = (UserVO)session.getAttribute("user");
		vo.setUserId(user.getEmail());
		
		scommentService.insertScomment(vo);
	}
	
	@RequestMapping("updateScomment.do")
	public String updateScomment(ScommentVO vo) {
		scommentService.updateScomment(vo);
		
		return "redirect:studyRead.do?num=" + vo.getSnum();
	}
	
	// 상품 소감(댓글) 삭제
	@ResponseBody
	@RequestMapping("deleteScomment.do")
	public int getReplyList(ScommentVO vo, HttpSession session) throws Exception {

	 int result = 0;
	 UserVO user = (UserVO)session.getAttribute("user");
	 String userId = scommentService.idCheck(vo.getCnum());
	   
	 if(user.getEmail().equals(userId)) {
	  
	  vo.setUserId(user.getEmail());
	  scommentService.deleteScomment(vo);
	  result = 1;
	 }
	 
	 System.out.println("리절트" +result);
	 return result; 
	}
	// 댓글 목록 불러오기
	@ResponseBody
	@RequestMapping(value="sCommentList.do", method=RequestMethod.GET)
	public List<ScommentVO> getScommentList(@RequestParam("snum") int snum){
		System.out.println(snum);
		System.out.println(scommentService.getScommentList(snum));
		return scommentService.getScommentList(snum);
		
	}
	
	
	
	
	
	
	
	
	
	
	
}
