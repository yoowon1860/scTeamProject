package com.sc.speedcampus.user.scomment.vo;

import java.util.Date;

public class ScommentVO {

	private int cnum;			// ��� ������ȣ
	private String userId;		// ��� �ۼ���
	private String cContent;	// ��� ����
	private Date regDate;		// ��� �ۼ� ��¥(Comment Date)
	private int snum;			// ��۴޸� �۹�ȣ
	
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getcContent() {
		return cContent;
	}
	public void setcContent(String cContent) {
		this.cContent = cContent;
	}
	public Date getregDate() {
		return regDate;
	}
	public void setregDate(Date regDate) {
		this.regDate = regDate;
	}
	public int getSnum() {
		return snum;
	}
	public void setSnum(int snum) {
		this.snum = snum;
	}
	
	@Override
	public String toString() {
		return "ScommentVO [cnum=" + cnum + ", userId=" + userId + ", cContent=" + cContent + ", regDate=" + regDate
				+ ", snum=" + snum + "]";
	}
	
	
}
