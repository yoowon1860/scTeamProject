package com.sc.speedcampus.user.course.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.vo.CourseVO;
import com.sc.speedcampus.user.course.service.GetSelectCourseListService;

@Service("GetSelectCourseListService")
public class GetSelectCourseListServiceImpl implements GetSelectCourseListService {

	@Autowired
	private CourseDAO couserDAO;
	
	@Override
	public List<CourseVO> getSelectCourseList(String name) {
		return couserDAO.getSelectCourseList(name);
		
	}

}
