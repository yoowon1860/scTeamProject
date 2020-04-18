package com.sc.speedcampus.admin.qna.service;

import java.util.List;

import com.sc.speedcampus.admin.qna.vo.QcommentVO;
import com.sc.speedcampus.user.qna.vo.QnaVO;

public interface AdminQnaService {

	public List<QnaVO> getQListAll();	
	public void deleteQ(QnaVO vo);
	public QnaVO getQ(int qnum);
	public void insertA(QcommentVO vo);
	public void updateAnswerState(int qnum);
}
