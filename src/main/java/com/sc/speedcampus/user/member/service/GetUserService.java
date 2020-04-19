package com.sc.speedcampus.user.member.service;

import java.util.List;

import com.sc.speedcampus.user.member.vo.UserVO;

public interface GetUserService {

	public UserVO getUser(UserVO vo);
	public List<UserVO> getUserList();
	public void deleteUser(UserVO vo);
	
}
