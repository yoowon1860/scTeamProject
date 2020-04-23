package com.sc.speedcampus.user.mycourse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;
import com.sc.speedcampus.util.SqlSessionFactoryBean;

@Repository
public class MyCourseDAO {


	@Autowired
	private SqlSession sqlSession;
	public MyCourseDAO() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	// �� ���� ����Ʈ �ҷ�����
	public List<MyCourseVO> getAll(String email){
		return sqlSession.selectList("MyCourseDAO.getMyCourseList", email);
	}
	
	public List<MyCourseVO> getEnd(UserVO vo){
		return sqlSession.selectList("MyCourseDAO.getMyEndList", vo);
	}
	
	public List<MyCourseVO> getIng(UserVO vo){
		return sqlSession.selectList("MyCourseDAO.getMyIngList", vo);
	}
}
