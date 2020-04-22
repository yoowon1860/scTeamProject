package com.sc.speedcampus.user.mycourse.vo;

import com.sc.speedcampus.admin.course.vo.CourseVO;

public class couseMyCourseData {

	private MyCourseVO mycourse;
	private CourseVO vd;
	public MyCourseVO getMycourse() {
		return mycourse;
	}
	public void setMycourse(MyCourseVO mycourse) {
		this.mycourse = mycourse;
	}
	public CourseVO getVd() {
		return vd;
	}
	public void setVd(CourseVO vd) {
		this.vd = vd;
	}
	@Override
	public String toString() {
		return "couseMyCourseData [mycourse=" + mycourse + ", vd=" + vd + "]";
	}
	
}
