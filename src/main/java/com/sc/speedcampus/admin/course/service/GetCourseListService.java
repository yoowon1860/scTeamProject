package com.sc.speedcampus.admin.course.service;

import java.util.List;

import com.sc.speedcampus.admin.course.vo.CourseVO;

public interface GetCourseListService {
	
	public List<CourseVO> getCourseList(CourseVO vo);

}
