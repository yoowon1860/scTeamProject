package com.sc.speedcampus.user.cart.service;

import java.util.List;

import com.sc.speedcampus.admin.course.vo.CourseVO;
import com.sc.speedcampus.user.cart.vo.CartVO;

public interface GetCartListService {
	
	public List<CartVO> cartList(String email);

	public List<CartVO> cartListNum(String email);
}
