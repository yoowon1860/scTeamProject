package com.sc.speedcampus.admin.qna.vo;

import java.util.Date;

public class QcommentVO {

	private int anum; 			// �亯 ������ȣ
	private String writer; 		// �亯 �ۼ���
	private String title; 		// �亯 ����
	private String content; 	// �亯 ����
	private String qnum; 		// ���� ������ȣ
	private String userEmail; 	// ������̸���
	private Date answerDate; 	// �亯 ��¥
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getQnum() {
		return qnum;
	}
	public void setQnum(String qnum) {
		this.qnum = qnum;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public Date getAnswerDate() {
		return answerDate;
	}
	public void setAnswerDate(Date answerDate) {
		this.answerDate = answerDate;
	}
	@Override
	public String toString() {
		return "QcommentVO [anum=" + anum + ", writer=" + writer + ", title=" + title + ", content=" + content
				+ ", qnum=" + qnum + ", userEmail=" + userEmail + ", answerDate=" + answerDate + "]";
	}
	
	
}
