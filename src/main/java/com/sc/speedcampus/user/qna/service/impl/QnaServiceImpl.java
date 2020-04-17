package com.sc.speedcampus.user.qna.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.qna.dao.QnaDAO;
import com.sc.speedcampus.user.qna.service.QnaService;
import com.sc.speedcampus.user.qna.vo.QnaVO;

@Service("qna")
public class QnaServiceImpl implements QnaService{

	@Autowired
	private QnaDAO qnaDAO;

	
	// 문의 등록
	@Override
	public void insertQ(QnaVO vo) {
		qnaDAO.insertQ(vo);
	}

	// 문의 리스트 가져오기
	@Override
	public List<QnaVO> getQList(String writer) {
		return qnaDAO.getQList(writer);
	}
	
	
}
