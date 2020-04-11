package com.sc.speedcampus.user.scomment.service;

import java.util.List;

import com.sc.speedcampus.user.scomment.vo.ScommentVO;

public interface ScommentService {

	public void insertComment(ScommentVO vo);
	public List<ScommentVO> getScommentList(int snum);
}
