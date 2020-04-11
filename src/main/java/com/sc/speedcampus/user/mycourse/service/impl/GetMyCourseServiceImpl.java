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
	public List<MyCourseVO> getMyCourseIng(UserVO vo) {
		return mycourseDAO.getIng(vo);
	}

	@Override
	public List<MyCourseVO> getMyCourseEnd(UserVO vo) {
		return mycourseDAO.getEnd(vo);
	}

	@Override
	public List<MyCourseVO> getMyCourseList(UserVO vo) {
		return mycourseDAO.getAll(vo);
	}

}
