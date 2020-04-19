package com.sc.speedcampus.user.qna.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sc.speedcampus.admin.qna.service.AdminQnaService;
import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.qna.service.QnaService;
import com.sc.speedcampus.user.qna.vo.QnaVO;

@Controller
public class QnaController {

	@Autowired
	private QnaService qnaService;
	@Autowired
	private AdminQnaService adminQnaService;
	
	// 문의 작성 폼 열기
	@RequestMapping("insertQForm.do")
	public String qna() {
		return  "my/userQna";
	}
	
	// 문의 리스트 
	@RequestMapping("qnaList.do")
	public String qnaList(Model model, HttpSession session) {
		UserVO user = (UserVO)session.getAttribute("user");
		String userId = user.getEmail();
		model.addAttribute("qnaList", qnaService.getQList(userId));
		return  "my/userQnaList";
	}
	
	// 문의 작성
	@RequestMapping("insertQ.do")
	public String insertQ(QnaVO vo) {
		qnaService.insertQ(vo);
		return "redirect:qnaList.do";
	}
	

}
