package com.sc.speedcampus.admin.pay;

import java.util.Date;
import java.util.List;

public class KakaoPayReadyVO {

	//response
    private String tid, next_redirect_pc_url;
    private Date created_at;
    private String total_amount;
    
    private String partner_user_id, partner_order_id; // 사용자 아이디, 주문번호
    private List<String> courseNameList;	// 선택 강좌 이름 리스트
    
    
    
    
	public List<String> getcourseNameList() {
		return courseNameList;
	}
	public void setcourseNameList(List<String> courseNameList) {
		this.courseNameList = courseNameList;
	}
	public String getPartner_user_id() {
		return partner_user_id;
	}
	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}
	public String getPartner_order_id() {
		return partner_order_id;
	}
	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}
	public String getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(String total_amount) {
		this.total_amount = total_amount;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getNext_redirect_pc_url() {
		return next_redirect_pc_url;
	}
	public void setNext_redirect_pc_url(String next_redirect_pc_url) {
		this.next_redirect_pc_url = next_redirect_pc_url;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	@Override
	public String toString() {
		return "KakaoPayReadyVO [tid=" + tid + ", next_redirect_pc_url=" + next_redirect_pc_url + ", created_at="
				+ created_at + ", total_amount=" + total_amount + ", partner_user_id=" + partner_user_id
				+ ", partner_order_id=" + partner_order_id + ", courseNameList=" + courseNameList + "]";
	}
    
    
}
