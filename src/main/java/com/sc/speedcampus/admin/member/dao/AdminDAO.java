package com.sc.speedcampus.admin.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.admin.member.vo.AdminVO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void register(AdminVO vo){
		sqlSessionTemplate.insert("AdminDAO.register", vo);
	} 
	
	public AdminVO getAdmin(AdminVO vo) {
		return (AdminVO) sqlSessionTemplate.selectOne("AdminDAO.getAdmin", vo);
	}
}
