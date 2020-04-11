package com.sc.speedcampus.admin.course.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.service.RegisterCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;

@Service("RegisterCourseService")
public class RegisterCourseServiceImpl implements RegisterCourseService {

	@Autowired
	private CourseDAO courseDAO;
	
	@Override
	public void register(CourseVO vo) {
		courseDAO.register(vo);
	}

}
