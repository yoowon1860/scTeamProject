package com.sc.speedcampus.user.mycourse.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.dao.MyCourseDAO;
import com.sc.speedcampus.user.mycourse.service.GetMyCourseService;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;
import com.sc.speedcampus.user.mycourse.vo.couseMyCourseData;

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

	/*@Override
	public couseMyCourseData getMyCourseList(String email) {
		System.out.println("이메일"+email);
		System.out.println("서비스임플" + mycourseDAO.getAll(email));
		return mycourseDAO.getAll(email);
	}*/

	public List<MyCourseVO> getMyCourseList(String email) {
		System.out.println("이메일"+email);
		System.out.println("서비스임플" + mycourseDAO.getAll(email));
		return mycourseDAO.getAll(email);
	}
}
