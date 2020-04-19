package com.sc.speedcampus.user.cart.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.cart.dao.CartDAO;
import com.sc.speedcampus.user.cart.service.InsertCartService;
import com.sc.speedcampus.user.cart.vo.CartVO;

@Service("InsertCartService")
public class InsertCartServiceImpl implements InsertCartService {

	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public void insert(CartVO vo) {
		cartDAO.insert(vo);
	}

}
