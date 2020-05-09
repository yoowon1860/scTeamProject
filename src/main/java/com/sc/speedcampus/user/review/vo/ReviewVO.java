package com.sc.speedcampus.user.review.vo;

import java.util.Date;

public class ReviewVO {

	private int rnum;
	private String userId;
	private String rContent;
	private Date regDate;
	private int starscore;
	private int conum;
	
	public int getRnum() {
		return rnum;
	}
	public void setRnum(int rnum) {
		this.rnum = rnum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getStarscore() {
		return starscore;
	}
	public void setStarscore(int starscore) {
		this.starscore = starscore;
	}
	public int getConum() {
		return conum;
	}
	public void setConum(int conum) {
		this.conum = conum;
	}
	
	@Override
	public String toString() {
		return "ReviewVO [rnum=" + rnum + ", userId=" + userId + ", rContent=" + rContent + ", regDate=" + regDate
				+ ", starscore=" + starscore + ", conum=" + conum + "]";
	}
	
}
