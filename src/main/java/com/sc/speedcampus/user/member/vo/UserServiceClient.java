package com.sc.speedcampus.user.member.vo;

import com.sc.speedcampus.user.member.dao.UserDAO;

public class UserServiceClient {

	public static void main(String[] args) {
		UserDAO userDAO = new UserDAO();
		UserVO vo = new UserVO();
		vo.setEmail("EMAIL");
		vo.setName("NAME");
		vo.setPass("PASS");
		vo.setPhone("PHONE");
		userDAO.register(vo);
		
		System.out.println(vo.toString());
	}

}
