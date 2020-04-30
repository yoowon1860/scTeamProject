package com.sc.speedcampus.admin.course.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.service.GetCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;

@Service("GetCourseService")
public class GetCourseServiceImpl implements GetCourseService {

	@Autowired
	private CourseDAO courseDAO;
	
	@Override
	public CourseVO getCourseService(CourseVO vo) {
		return courseDAO.getCourse(vo);
	}

	@Override
	public List<CourseVO> getNewCourse() {
		return courseDAO.getNewCourse();
	}

}
