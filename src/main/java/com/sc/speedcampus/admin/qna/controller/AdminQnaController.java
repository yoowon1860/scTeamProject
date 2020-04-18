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
	public String insertA(QcommentVO vo, HttpServletRequest request) {
		
		// db ����
		adminQnaService.insertA(vo);

		// ���� �߼�
		String setfrom = "speedcampusmgr@gmail.com";
		String userEmail = request.getParameter("userEmail"); // �޴� ��� �̸���
		String title = request.getParameter("title"); // ����
		String content = request.getParameter("content"); // ����

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // �����»�� �����ϰų� �ϸ� �����۵��� ����
			messageHelper.setTo(userEmail); // �޴»�� �̸���
			messageHelper.setSubject(title); // ���������� ������ �����ϴ�
			messageHelper.setText(content); // ���� ����

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}
	
		// �亯 ���� �ٲٱ�
		int qnum = Integer.parseInt(vo.getQnum());
		adminQnaService.updateAnswerState(qnum);
		
		return "redirect:qnaList.mdo";
	}
}
