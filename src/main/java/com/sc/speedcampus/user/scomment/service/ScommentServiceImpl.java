package com.sc.speedcampus.user.scomment.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.scomment.dao.ScommentDAO;
import com.sc.speedcampus.user.scomment.vo.ScommentVO;

@Service("scommentService")
public class ScommentServiceImpl implements ScommentService{

	@Autowired
	ScommentDAO scommentDAO;
	
	@Override
	public void insertComment(ScommentVO vo) {
		scommentDAO.insertScomment(vo);
	}

	@Override
	public List<ScommentVO> getScommentList(int snum) {
		return scommentDAO.getScommentList(snum);
	}

}
