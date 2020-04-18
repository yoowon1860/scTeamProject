package com.sc.speedcampus.admin.qna.controller;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sc.speedcampus.admin.qna.service.AdminQnaService;
import com.sc.speedcampus.admin.qna.vo.QcommentVO;
import com.sc.speedcampus.user.qna.vo.QnaVO;

@Controller
public class AdminQnaController {

	@Autowired
	private AdminQnaService adminQnaService;
	@Autowired
	  private JavaMailSender mailSender;
	
	// QnA 목록 불러오기
	@RequestMapping("qnaList.mdo")
	public String qnaList(Model model) {
		model.addAttribute("qList", adminQnaService.getQListAll());
		return "aBoard/adminQnaList";
	}
	
	@RequestMapping("answerWrite.mdo")
	public String answerWrite(Model model, HttpServletRequest request) {
		
		// 문의내용 불러오기
		int qnum = Integer.parseInt(request.getParameter("qnum"));
		model.addAttribute("q",adminQnaService.getQ(qnum));
		
		return "aBoard/adminQnaCommentWrite";
	}
	
	// QnA 삭제
	@RequestMapping("deleteQna.mdo")
	public String qnaDelete(QnaVO vo) {
		adminQnaService.deleteQ(vo);
		return "redirect:qnaList.mdo";
	}
	
	// 답변 db에 등록
	@RequestMapping("insertA.mdo")
	public String insertA(QcommentVO vo, HttpServletRequest request) {
		
		// db 저장
		adminQnaService.insertA(vo);

		// 메일 발송
		String setfrom = "speedcampusmgr@gmail.com";
		String userEmail = request.getParameter("userEmail"); // 받는 사람 이메일
		String title = request.getParameter("title"); // 제목
		String content = request.getParameter("content"); // 내용

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(userEmail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
	
		// 답변 상태 바꾸기
		int qnum = Integer.parseInt(vo.getQnum());
		adminQnaService.updateAnswerState(qnum);
		
		return "redirect:qnaList.mdo";
	}
}
