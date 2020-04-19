package com.sc.speedcampus.user.qna.service;

import java.util.List;

import com.sc.speedcampus.user.qna.vo.QnaVO;

public interface QnaService {

	public void insertQ(QnaVO vo);
	public List<QnaVO> getQList(String writer);
<<<<<<< HEAD
	
=======
	void updateQ(QnaVO vo);
	void deleteQ(QnaVO vo);
	public QnaVO getQ(int qnum);
>>>>>>> 9e1269140f1425ca9a4d9774fba853886037645c
}
