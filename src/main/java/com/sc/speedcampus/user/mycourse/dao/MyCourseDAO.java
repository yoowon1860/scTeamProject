package com.sc.speedcampus.user.mycourse.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;
import com.sc.speedcampus.user.mycourse.vo.couseMyCourseData;
import com.sc.speedcampus.util.SqlSessionFactoryBean;

@Repository
public class MyCourseDAO {


	@Autowired
	private SqlSession sqlSession;
	public MyCourseDAO() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	/*public couseMyCourseData getAll(String email){
		System.out.println(email);
		System.out.println("dao:"+sqlSession.selectList("MyCourseDAO.getMyCourseList", email));
		return sqlSession.getMapper(couseMyCourseData.class);
	}*/
	public List<MyCourseVO> getAll(String email){
		System.out.println(email);
		System.out.println("dao:"+sqlSession.selectList("MyCourseDAO.getMyCourseList", email));
		return sqlSession.selectList("MyCourseDAO.getMyCourseList", email);
	}
	
	public List<MyCourseVO> getEnd(UserVO vo){
		return sqlSession.selectList("MyCourseDAO.getMyEndList", vo);
	}
	
	public List<MyCourseVO> getIng(UserVO vo){
		return sqlSession.selectList("MyCourseDAO.getMyIngList", vo);
	}
}
