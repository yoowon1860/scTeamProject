package com.sc.speedcampus.admin.course.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.service.RegisterCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;
import com.sc.speedcampus.util.FileUtils;

@Service("RegisterCourseService")
public class RegisterCourseServiceImpl implements RegisterCourseService {

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	
	@Inject
	private CourseDAO courseDAO;

	@Override
	public void register(CourseVO vo, MultipartHttpServletRequest mpRequest) throws Exception {
		courseDAO.register(vo);
		
		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(vo, mpRequest);
		int size = list.size();
		for (int i = 0; i < size; i++) {
			courseDAO.registerImg(list.get(i));
		}
		
	}
	
	
}
