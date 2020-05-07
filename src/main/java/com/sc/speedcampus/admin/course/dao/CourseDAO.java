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
		sqlSessionTemplate.insert("CourseDAO.registerImg", map);
		
	}	
	
	public void update(CourseVO vo) {
		sqlSessionTemplate.update("CourseDAO.update", vo);
	}
	
	public void updateImg(Map<String, Object> map) throws Exception{
		sqlSessionTemplate.update("CourseDAO.updateImg", map);
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
	
	public List<CourseVO> getSelectCourseList(String name){
		return sqlSessionTemplate.selectList("CourseDAO.getSelectCourseList", name);
	}
	
	// 최근 등록 강좌 5개 가져오기
	public List<CourseVO> getNewCourse(){
		return sqlSessionTemplate.selectList("CourseDAO.newCourseFive");
	}
	
	// 코스명에 따른 고유번호 가져오기
	public int getCourseNum(String name) {
		return sqlSessionTemplate.selectOne("CourseDAO.getCourseNum",name);
	}
	
}
