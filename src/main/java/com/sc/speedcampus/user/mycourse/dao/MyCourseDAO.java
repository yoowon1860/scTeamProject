package com.sc.speedcampus.user.mycourse.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;

@Repository
public class MyCourseDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public List<MyCourseVO> getAll(UserVO vo){
		return sqlSessionTemplate.selectList("CourseDAO.getMyCourseList", vo);
	}
	
	public List<MyCourseVO> getEnd(UserVO vo){
		return sqlSessionTemplate.selectList("CourseDAO.getMyEndList", vo);
	}
	
	public List<MyCourseVO> getIng(UserVO vo){
		return sqlSessionTemplate.selectList("CourseDAO.getMyIngList", vo);
	}
}
