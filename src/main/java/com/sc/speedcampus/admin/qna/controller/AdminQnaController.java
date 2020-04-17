package com.sc.speedcampus.admin.qna.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sc.speedcampus.admin.qna.service.AdminQnaService;

@Controller
public class AdminQnaController {

	@Autowired
	private AdminQnaService adminQnaService;
	
	// QnA 목록 불러오기
	@RequestMapping("qnaList.mdo")
	public String qnaList(Model model) {
		model.addAttribute("qList", adminQnaService.getQListAll());
		return "aBoard/adminQnaList";
	}
}
