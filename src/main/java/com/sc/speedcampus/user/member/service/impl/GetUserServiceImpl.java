package com.sc.speedcampus.user.member.service.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.member.dao.UserDAO;
import com.sc.speedcampus.user.member.service.GetUserService;
import com.sc.speedcampus.user.member.vo.UserVO;

@Service("GetUserService")
public class GetUserServiceImpl implements GetUserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
		
	}

	// 유저 데이터 전부 불러오기(admin)
	@Override
	public List<UserVO> getUserList() {
		return userDAO.getUserList();
	}

}
