package com.sc.speedcampus.admin.course.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.service.GetCourseListService;
import com.sc.speedcampus.admin.course.vo.CourseVO;

public class GetCourseListServiceImpl implements GetCourseListService {

	@Autowired
	private CourseDAO courseDAO;
	
	@Override
	public List<CourseVO> getCourseList(CourseVO vo) {
		return courseDAO.getCourseList(vo);
	}

}
