package com.sc.speedcampus.user.course.service;

import java.util.List;

import com.sc.speedcampus.admin.course.vo.CourseVO;

public interface GetSelectCourseListService {

	public List<CourseVO> getSelectCourseList(String name);
}
