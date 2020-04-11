package com.sc.speedcampus.user.member.dao;


import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.web.util.SqlSessionFactoryBean;

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
	
	public UserVO getUserData(UserVO vo) {
		return (UserVO) sqlSessionTemplate.selectOne("UserDAO.getUserData", vo);
	}
	
	public void update(UserVO vo) {
		sqlSessionTemplate.update("UserDAO.update", vo);
	}
}
