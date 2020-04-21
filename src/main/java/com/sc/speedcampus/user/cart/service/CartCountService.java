package com.sc.speedcampus.user.cart.service;

public interface CartCountService {

	public int listCount(String email);
	public int totalPrice(String email);
}
