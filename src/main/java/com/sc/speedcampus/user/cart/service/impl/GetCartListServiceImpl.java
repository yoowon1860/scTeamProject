package com.sc.speedcampus.user.cart.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.course.vo.CourseVO;
import com.sc.speedcampus.user.cart.dao.CartDAO;
import com.sc.speedcampus.user.cart.service.GetCartListService;
import com.sc.speedcampus.user.cart.vo.CartVO;

@Service("GetCartListService")
public class GetCartListServiceImpl implements GetCartListService {

	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public List<CartVO> cartList(String email) {
		
		return cartDAO.GetCartList(email);
	}

}
