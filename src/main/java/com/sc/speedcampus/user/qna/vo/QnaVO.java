package com.sc.speedcampus.user.qna.vo;

import java.util.Date;

public class QnaVO {

	private int qnum;			// ������ȣ
	private String title; 		// ���� ���� 
	private String writer;		// ������ Id
	private String content; 	// ���� ����
	private Date regDate;		// ���� ����
	private String category; 	// ���� ī�װ�
	public int getQnum() {
		return qnum;
	}
	public void setQnum(int qnum) {
		this.qnum = qnum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "QnaVO [qnum=" + qnum + ", title=" + title + ", writer=" + writer + ", content=" + content + ", regDate="
				+ regDate + ", category=" + category + "]";
	}
	
	
}
