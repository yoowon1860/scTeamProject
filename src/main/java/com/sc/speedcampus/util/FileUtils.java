package com.sc.speedcampus.util;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.sc.speedcampus.admin.course.vo.CourseVO;



@Component("fileUtils")
public class FileUtils implements ServletContextAware{
	
	 
	
	public List<Map<String, Object>> parseInsertFileInfo(CourseVO courseVO, 
			MultipartHttpServletRequest mpRequest) throws Exception{
		
		Iterator<String> iterator = mpRequest.getFileNames();
		String filePath = mpRequest.getSession().getServletContext().getRealPath("/resources/upload/"); //파일이 저장될 위치
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension = null;
		String storedFileName = null;
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		Map<String, Object> listMap = null;
		
		int num = courseVO.getNum();
		
		File file = new File(filePath);
		if(file.exists() == false) {
			file.mkdirs();
		}
		
		while(iterator.hasNext()) {
			multipartFile = mpRequest.getFile(iterator.next());
			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename();
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));
				storedFileName = getRandomString() + originalFileExtension;
				
				file = new File(filePath + storedFileName);
				multipartFile.transferTo(file);
				listMap = new HashMap<String, Object>();
				listMap.put("NUM", num);
				listMap.put("ORG_IMG", originalFileName);
				listMap.put("STORED_IMG", storedFileName);
				
				list.add(listMap);
			}
		}
		return list;
	}
		
		public static String getRandomString() {
			return UUID.randomUUID().toString().replaceAll("-", "");
		}

		@Override
		public void setServletContext(ServletContext servletContext) {
			// TODO Auto-generated method stub
			
		}
}
