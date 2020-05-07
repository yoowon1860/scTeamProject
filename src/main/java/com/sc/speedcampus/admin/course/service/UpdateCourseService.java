package com.sc.speedcampus.admin.course.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sc.speedcampus.admin.course.vo.CourseVO;

public interface UpdateCourseService {

	public void update(CourseVO vo, MultipartHttpServletRequest mpRequest)throws Exception;
}
