package com.sc.speedcampus.user.cart.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.cart.dao.CartDAO;
import com.sc.speedcampus.user.cart.service.GetCartOneService;
import com.sc.speedcampus.user.cart.vo.CartVO;

@Service
public class GetCartOneServiceImpl implements GetCartOneService {

	@Autowired
	private CartDAO cartDAO;

	public CartVO getCartOne(CartVO vo) {
		
		return cartDAO.getCartOne(vo);
	}
	

}
