package com.sc.speedcampus.util;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MailController {

	@Autowired
	  private JavaMailSender mailSender;
	 
	  // mailSending �ڵ�
	  @RequestMapping("answerMail.mdo")
	  public String mailSending(HttpServletRequest request) {
	   
	    String setfrom = "speedcampusmgr@gmail.com";         
	    String userEmail  = request.getParameter("userEmail");  // �޴� ��� �̸���
	    String title   = request.getParameter("title");      	// ����
	    String content = request.getParameter("content");    	// ����
	   
	    try {
	      MimeMessage message = mailSender.createMimeMessage();
	      MimeMessageHelper messageHelper 
	                        = new MimeMessageHelper(message, true, "UTF-8");
	 
	      messageHelper.setFrom(setfrom);  // �����»�� �����ϰų� �ϸ� �����۵��� ����
	      messageHelper.setTo(userEmail);     // �޴»�� �̸���
	      messageHelper.setSubject(title); // ���������� ������ �����ϴ�
	      messageHelper.setText(content);  // ���� ����
	     
	      mailSender.send(message);
	    } catch(Exception e){
	      System.out.println(e);
	    }
	   
	    return "redirect:qnaList.mdo";
	  }
}
