package com.sc.speedcampus.admin.qna.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.admin.qna.dao.QcommentDAO;
import com.sc.speedcampus.admin.qna.service.AdminQnaService;
import com.sc.speedcampus.admin.qna.vo.QcommentVO;
import com.sc.speedcampus.user.qna.dao.QnaDAO;
import com.sc.speedcampus.user.qna.vo.QnaVO;

@Service
public class AdminQnaServiceImpl implements AdminQnaService {

	@Autowired
	private QnaDAO qnaDAO;
	@Autowired
	private QcommentDAO qcommentDAO;

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

	// Qna 가져오기
	@Override
	public QnaVO getQ(int qnum) {
		return qnaDAO.getQ(qnum);
	}

	// 답글 추가
	@Override
	public void insertA(QcommentVO vo) {
		qcommentDAO.insertA(vo);
		
	}

	// 답변 상태 변경
	@Override
	public void updateAnswerState(QcommentVO vo) {
		qnaDAO.updateAnswerState(vo);
		
	}

	// 답글 하나 가져오기
	@Override
	public QcommentVO getA(int qnum) {
		return qcommentDAO.getA(qnum);
	}
}
