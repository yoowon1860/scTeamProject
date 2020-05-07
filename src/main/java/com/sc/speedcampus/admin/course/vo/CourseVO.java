package com.sc.speedcampus.admin.course.vo;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlTransient;

import org.springframework.web.multipart.MultipartFile;

public class CourseVO {
	private int num;
	private String name;
	private int price;
	private String youtube;
	private String detail;
	
	private ImgVO imgVO;
	
	public ImgVO getImgVO() {
		return imgVO;
	}
	public void setImgVO(ImgVO imgVO) {
		this.imgVO = imgVO;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	public String getYoutube() {
		return youtube;
	}
	public void setYoutube(String youtube) {
		this.youtube = youtube;
	}
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Override
	public String toString() {
		return "CourseVO [num=" + num + ", name=" + name + ", price=" + price + ", img="  + ", youtube=" + youtube
				+ ", detail=" + detail + "]";
	}
	
	

}
