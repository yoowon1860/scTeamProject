package com.sc.speedcampus.user.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.member.dao.UserDAO;
import com.sc.speedcampus.user.member.service.RegisterService;
import com.sc.speedcampus.user.member.vo.UserVO;

@Service("RegisterService")
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	private UserDAO userDAO; 

	@Override
	public void register(UserVO vo) {
		// TODO Auto-generated method stub
		userDAO.register(vo);

	}

}
