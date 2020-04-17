package com.sc.speedcampus.admin.qna.service;

import java.util.List;

import com.sc.speedcampus.user.qna.vo.QnaVO;

public interface AdminQnaService {

	public List<QnaVO> getQListAll();	
	public void deleteQ(QnaVO vo);
	public QnaVO getQ(int qnum);
}
