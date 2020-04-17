package com.sc.speedcampus.admin.course.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.service.UpdateCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;

@Service("UpdateCourseService")
public class UpdateCourseServiceImpl implements UpdateCourseService {

	@Autowired
	private CourseDAO courseDAO;
	
	@Override
	public void update(CourseVO vo) {
		courseDAO.update(vo);

	}

}
