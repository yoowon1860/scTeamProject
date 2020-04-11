package com.sc.speedcampus.admin.course.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.service.DeleteCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;

@Service("DeleteCourseServiceImpl")
public class DeleteCourseServiceImpl implements DeleteCourseService {

	@Autowired
	private CourseDAO courseDAO;
	
	@Override
	public void Delete(CourseVO vo) {
		courseDAO.delete(vo);

	}

}
