package com.sc.speedcampus.admin.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.member.dao.AdminDAO;
import com.sc.speedcampus.admin.member.service.RegisterAdminService;
import com.sc.speedcampus.admin.member.vo.AdminVO;

@Service("RegisterAdminService")
public class RegisterAdminServiceImpl implements RegisterAdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Override
	public void registerAdmin(AdminVO vo) {
		adminDAO.register(vo);
	}

}
