package com.sc.speedcampus.admin.qna.vo;

import java.util.Date;

public class QcommentVO {

	private int anum; 			// 답변 고유번호
	private String writer; 		// 답변 작성자
	private String title; 		// 답변 제목
	private String content; 	// 답변 내용
	private String qnum; 		// 문의 고유번호
	private String userEmail; 	// 사용자이메일
	private Date answerDate; 	// 답변 날짜
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
