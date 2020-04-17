package com.sc.speedcampus.admin.qna.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.qna.service.AdminQnaService;
import com.sc.speedcampus.user.qna.dao.QnaDAO;
import com.sc.speedcampus.user.qna.vo.QnaVO;

@Service
public class AdminQnaServiceImpl implements AdminQnaService {

	@Autowired
	private QnaDAO qnaDAO;

	// QnaList 가져오기
	@Override
	public List<QnaVO> getQListAll() {
		return qnaDAO.getQListAll();
	}
	
	// Qna 삭제
	@Override
	public void deleteQ(QnaVO vo) {
		qnaDAO.deleteQ(vo);
	}

	@Override
	public QnaVO getQ(int qnum) {
		return qnaDAO.getQ(qnum);
	}
}
