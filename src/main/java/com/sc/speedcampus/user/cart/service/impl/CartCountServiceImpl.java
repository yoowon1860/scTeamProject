package com.sc.speedcampus.user.cart.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.cart.dao.CartDAO;
import com.sc.speedcampus.user.cart.service.CartCountService;

@Service("CartCountService")
public class CartCountServiceImpl implements CartCountService {

	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public int listCount(String email) {
		return cartDAO.listCount(email);
	}

	@Override
	public int totalPrice(String email) {
		return cartDAO.totalPrice(email);
	}

}
