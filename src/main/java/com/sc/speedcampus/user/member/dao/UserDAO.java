package com.sc.speedcampus.user.member.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.member.vo.UserVO;

@Repository
public class UserDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void register(UserVO vo){
		sqlSessionTemplate.insert("UserDAO.register", vo);
	}
	
	public UserVO getUser(UserVO vo) {
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getUser", vo);
	}
	
	public List<UserVO> getUserList() {
		return sqlSessionTemplate.selectList("UserDAO.getUserList");
	}
	
	public void update(UserVO vo) {
		sqlSessionTemplate.update("UserDAO.update", vo);
	}
}
