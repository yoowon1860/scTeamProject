package com.sc.speedcampus.user.scomment.service;

import java.util.List;

import com.sc.speedcampus.user.scomment.vo.ScommentVO;

public interface ScommentService {

	public void insertScomment(ScommentVO vo);
	public void updateScomment(ScommentVO vo);
	public void deleteScomment(ScommentVO vo);
	public List<ScommentVO> getScommentList(int snum);
	public String idCheck(int cnum);
}
