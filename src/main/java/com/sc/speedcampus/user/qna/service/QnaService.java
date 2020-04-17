package com.sc.speedcampus.user.qna.service;

import java.util.List;

import com.sc.speedcampus.user.qna.vo.QnaVO;

public interface QnaService {

	public void insertQ(QnaVO vo);
	public List<QnaVO> getQList(String writer);
}
