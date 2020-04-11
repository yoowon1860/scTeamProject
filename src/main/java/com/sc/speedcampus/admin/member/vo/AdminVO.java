package com.sc.speedcampus.admin.member.vo;

public class AdminVO {

	private String id;
	private String pass;
	private String name;
	private String phone;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
		return "AdminVO [id=" + id + ", pass=" + pass + ", name=" + name + ", phone=" + phone + "]";
	}
	
	
}
