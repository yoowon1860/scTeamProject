package com.sc.speedcampus.user.cart.vo;

import com.sc.speedcampus.admin.course.vo.CourseVO;


public class CartVO {
	private int num;
	private String email;
	private String vname;
	private int price;
	
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
	public String getvname() {
		return vname;
	}
	public void setvname(String vname) {
		this.vname = vname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "CartVO [num=" + num + ", email=" + email + ", vname=" + vname + ", price=" + price + ", courseVO="
				+ courseVO + "]";
	}
	
	
	
}
