package com.sc.speedcampus.user.cart.dao;

import java.util.List;

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
	
	public List<CartVO> GetCartList(String email){
		return sqlSessionTemplate.selectList("CartDAO.getCartList", email);
	}
	
	public int listCount(String email) {
		return sqlSessionTemplate.selectOne("CartDAO.listCount",email);
	}
	
	public int totalPrice(String email) {
		return sqlSessionTemplate.selectOne("CartDAO.totalPrice",email);
	}
	
	public void delete(CartVO vo) throws Exception{
		sqlSessionTemplate.delete("CartDAO.delete", vo);
	}
}
