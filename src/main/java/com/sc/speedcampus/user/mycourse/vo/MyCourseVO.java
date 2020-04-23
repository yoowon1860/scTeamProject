package com.sc.speedcampus.user.mycourse.vo;

import java.sql.Date;

import com.sc.speedcampus.admin.course.vo.CourseVO;

public class MyCourseVO {
	
	private int num;
	private String email;
	private int vnum;
	private Date startDate;
	private Date endDate;
	
	private CourseVO courseVO;
	
	
	public CourseVO getCourseVO() {
		return courseVO;
	}
	public void setCourseVO(CourseVO courseVO) {
		this.courseVO = courseVO;
	}
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

	public int getVnum() {
		return vnum;
	}
	public void setVnum(int vnum) {
		this.vnum = vnum;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	@Override
	public String toString() {
		return "MyCourseVO [num=" + num + ", email=" + email + ", vnum=" + vnum + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", courseVO=" + courseVO + "]";
	}

	
	

}
