package com.sc.speedcampus.admin.course.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.service.RegisterImageService;

@Service("RegisterImageService")
public class RegisterImageServiceImpl implements RegisterImageService {

	@Autowired
	private CourseDAO courseDAO;
	
	@Override
	public void registerImage(Map<String, Object> hmap) {
		courseDAO.image(hmap);
	}

}
