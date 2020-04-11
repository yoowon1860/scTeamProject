package com.sc.speedcampus.user.mycourse.vo;

import java.sql.Date;

public class MyCourseVO {
	
	private int num;
	private String email;
	private String vd;
	private Date start;
	private Date end;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVd() {
		return vd;
	}
	public void setVd(String vd) {
		this.vd = vd;
	}
	public Date getStart() {
		return start;
	}
	public void setStart(Date start) {
		this.start = start;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	@Override
	public String toString() {
		return "MyCourseVO [num=" + num + ", email=" + email + ", vd=" + vd + ", start=" + start + ", end=" + end + "]";
	}
	
	
	

}
