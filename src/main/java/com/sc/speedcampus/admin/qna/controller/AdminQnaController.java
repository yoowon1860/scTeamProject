package com.sc.speedcampus.admin.qna.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sc.speedcampus.admin.qna.service.AdminQnaService;
import com.sc.speedcampus.user.qna.vo.QnaVO;

@Controller
public class AdminQnaController {

	@Autowired
	private AdminQnaService adminQnaService;
	
	// QnA ��� �ҷ�����
	@RequestMapping("qnaList.mdo")
	public String qnaList(Model model) {
		model.addAttribute("qList", adminQnaService.getQListAll());
		return "aBoard/adminQnaList";
	}
	
	@RequestMapping("answerWrite.mdo")
	public String answerWrite(Model model, HttpServletRequest request) {
		
		// ���ǳ��� �ҷ�����
		int qnum = Integer.parseInt(request.getParameter("qnum"));
		model.addAttribute("q",adminQnaService.getQ(qnum));
		
		return "aBoard/adminQnaCommentWrite";
	}
	
	// QnA ����
	@RequestMapping("deleteQna.mdo")
	public String qnaDelete(QnaVO vo) {
		adminQnaService.deleteQ(vo);
		return "redirect:qnaList.mdo";
	}
	
	// �亯 db�� ���
	@RequestMapping("insertA.mdo")
	public void insertA() {
		
		
	}
}
