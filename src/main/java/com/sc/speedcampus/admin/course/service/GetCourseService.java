package com.sc.speedcampus.admin.course.service;

import java.util.List;

import com.sc.speedcampus.admin.course.vo.CourseVO;

public interface GetCourseService {
	
	public CourseVO getCourseService(CourseVO vo);
	public List<CourseVO> getNewCourse();
	public int getCourseNum(String name);

}
