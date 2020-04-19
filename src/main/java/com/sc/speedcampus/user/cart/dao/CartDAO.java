package com.sc.speedcampus.user.cart.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.cart.vo.CartVO;

@Repository
public class CartDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insert(CartVO vo) {
		sqlSessionTemplate.insert("CartDAO.insert", vo);
	}
}
