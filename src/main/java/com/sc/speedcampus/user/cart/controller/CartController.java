package com.sc.speedcampus.user.cart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sc.speedcampus.user.cart.service.InsertCartService;
import com.sc.speedcampus.user.cart.vo.CartVO;

@Controller
public class CartController {

	@Autowired
	private InsertCartService insertCart; 
	
	@RequestMapping(value="insertCart.do", method = RequestMethod.POST)
	public String insert(CartVO vo) {
		System.out.println("장바구니 추가");
		insertCart.insert(vo);
		return "my/userCart";
	}
}
