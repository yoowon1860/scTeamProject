package com.sc.speedcampus.user.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.member.dao.UserDAO;
import com.sc.speedcampus.user.member.service.UpdateService;
import com.sc.speedcampus.user.member.vo.UserVO;

@Service("UpdateService")
public class UpdateServiceImpl implements UpdateService {

	@Autowired
	private UserDAO userDAO; 
	
	@Override
	public void update(UserVO vo) {

		userDAO.update(vo);

	}

}
