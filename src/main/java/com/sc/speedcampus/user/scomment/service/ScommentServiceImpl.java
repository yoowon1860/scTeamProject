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
	public void insertScomment(ScommentVO vo) {
		scommentDAO.insertScomment(vo);
	}

	@Override
	public List<ScommentVO> getScommentList(int snum) {
		return scommentDAO.getScommentList(snum);
	}

	@Override
	public void updateScomment(ScommentVO vo) {
		scommentDAO.updateScomment(vo);
	}

	@Override
	public void deleteScomment(ScommentVO vo) {
		scommentDAO.deleteScomment(vo);
	}

	@Override
	public String idCheck(int cnum) {
		return scommentDAO.idCheck(cnum);
	}

	@Override
	public int countScomment(int num) {
		return scommentDAO.countScomment(num);
	}

}
