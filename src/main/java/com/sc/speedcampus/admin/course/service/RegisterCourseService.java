package com.sc.speedcampus.admin.course.service;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sc.speedcampus.admin.course.vo.CourseVO;

public interface RegisterCourseService {

	public void register(CourseVO vo, MultipartHttpServletRequest mpRequest) throws Exception;
}
