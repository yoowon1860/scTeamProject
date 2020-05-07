package com.sc.speedcampus.user.mycourse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.dao.MyCourseDAO;
import com.sc.speedcampus.user.mycourse.service.GetMyCourseService;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;

@Service("GetMyCourseService")
public class GetMyCourseServiceImpl implements GetMyCourseService {
	
	@Autowired
	private MyCourseDAO mycourseDAO;

	@Override
	public List<MyCourseVO> getMyCourseList(String email) {
		System.out.println("�̸���"+email);
		System.out.println("��������" + mycourseDAO.getAll(email));
		return mycourseDAO.getAll(email);
	}

	@Override
	public List<MyCourseVO> getPopularCourse() {
		return mycourseDAO.getPopularCourse();
	}

	@Override
	public void insertMyCourse(MyCourseVO vo) {
		System.out.println("���࿩��");
		System.out.println(vo);
		mycourseDAO.insertMyCourse(vo);
		
	}

	
}
