package com.sc.speedcampus.admin.course.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sc.speedcampus.admin.course.dao.CourseDAO;
import com.sc.speedcampus.admin.course.service.UpdateCourseService;
import com.sc.speedcampus.admin.course.vo.CourseVO;
import com.sc.speedcampus.util.FileUtils;

@Service("UpdateCourseService")
public class UpdateCourseServiceImpl implements UpdateCourseService {

	@Resource(name="fileUtils")
	private FileUtils fileUtils;
	@Autowired
	private CourseDAO courseDAO;
	
	@Override
	public void update(CourseVO vo, MultipartHttpServletRequest mpRequest) throws Exception{
		courseDAO.update(vo);
		
		List<Map<String, Object>> list = fileUtils.parseInsertFileInfo(vo, mpRequest);
		int size = list.size();
		for (int i = 0; i < size; i++) {
			courseDAO.updateImg(list.get(i));
		}
	}

}
