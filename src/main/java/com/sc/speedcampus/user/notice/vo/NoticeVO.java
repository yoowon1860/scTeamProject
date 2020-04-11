package com.sc.speedcampus.user.notice.vo;

import java.util.Date;

public class NoticeVO {
	private int num;
	private String title;
	private String writer;
	private String content;
	private Date regDate;
	private int viewcnt;
	private String pass;
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	
	@Override
	public String toString() {
		return "NoticeVO [num=" + num + ", title=" + title + ", writer=" + writer + ", content=" + content
				+ ", regDate=" + regDate + ", viewcnt=" + viewcnt + ", pass=" + pass + "]";
	}
	

}
