package com.sc.speedcampus.user.qna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class QnaController {

	
	@RequestMapping("qna.do")
	public String qna() {
		return  "my/userQna";
	}
	
	@RequestMapping("qnaList.do")
	public String qnaList() {
		return  "my/userQnaList";
	}
}
