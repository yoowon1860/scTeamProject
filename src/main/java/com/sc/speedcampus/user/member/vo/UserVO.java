package com.sc.speedcampus.user.member.vo;

public class UserVO {
	private String email;
	private String pass;
	private String name;
	private String phone;
	
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	@Override
	public String toString() {
		return "UserVO [email=" + email + ", pass=" + pass + ", name=" + name + ", phone=" + phone + "]";
	}
	
	
	
	

}
