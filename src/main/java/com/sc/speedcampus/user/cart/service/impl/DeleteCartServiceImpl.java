package com.sc.speedcampus.user.cart.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.cart.dao.CartDAO;
import com.sc.speedcampus.user.cart.service.DeleteCartService;
import com.sc.speedcampus.user.cart.vo.CartVO;

@Service("DeleteCartService")
public class DeleteCartServiceImpl implements DeleteCartService {

	@Autowired
	private CartDAO cartDAO;
	
	@Override
	public void delete(CartVO vo) throws Exception{
		cartDAO.delete(vo);
	}

}
