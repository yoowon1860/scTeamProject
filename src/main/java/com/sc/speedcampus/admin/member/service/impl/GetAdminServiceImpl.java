package com.sc.speedcampus.admin.member.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.member.dao.AdminDAO;
import com.sc.speedcampus.admin.member.service.GetAdminService;
import com.sc.speedcampus.admin.member.vo.AdminVO;

@Service("GetAdminService")
public class GetAdminServiceImpl implements GetAdminService {
	
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public AdminVO getAdmin(AdminVO vo) {
		return adminDAO.getAdmin(vo);
	}

}
