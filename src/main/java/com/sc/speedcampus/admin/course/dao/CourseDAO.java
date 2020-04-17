package com.sc.speedcampus.admin.course.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.admin.course.vo.CourseVO;

@Repository
public class CourseDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void register(CourseVO vo) {
		sqlSessionTemplate.insert("CourseDAO.register", vo);
	}
	
	public void registerImg(Map<String, Object> map) throws Exception{
		sqlSessionTemplate.insert("courseDAO.registerImg", map);
		
	}	
	
	public void update(CourseVO vo) {
		sqlSessionTemplate.update("CourseDAO.update", vo);
	}

	public void delete(CourseVO vo) {
		sqlSessionTemplate.delete("CourseDAO.delete", vo);
	}
	
	public CourseVO getCourse(CourseVO vo) {
		return (CourseVO) sqlSessionTemplate.selectOne("CourseDAO.getCourse", vo);
	}
	
	public List<CourseVO> getCourseList(CourseVO vo){
		return sqlSessionTemplate.selectList("CourseDAO.getCourseList", vo);
	}
	
	
	
}
