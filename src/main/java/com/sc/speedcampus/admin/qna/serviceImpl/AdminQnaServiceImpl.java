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

	// QnaList ��������
	@Override
	public List<QnaVO> getQListAll() {
		return qnaDAO.getQListAll();
	}
	
	// Qna ����
	@Override
	public void deleteQ(QnaVO vo) {
		qnaDAO.deleteQ(vo);
	}

	// Qna ��������
	@Override
	public QnaVO getQ(int qnum) {
		return qnaDAO.getQ(qnum);
	}

	// ��� �߰�
	@Override
	public void insertA(QcommentVO vo) {
		qcommentDAO.insertA(vo);
		
	}

	// �亯 ���� ����
	@Override
	public void updateAnswerState(QcommentVO vo) {
		qnaDAO.updateAnswerState(vo);
		
	}

	// ��� �ϳ� ��������
	@Override
	public QcommentVO getA(int qnum) {
		return qcommentDAO.getA(qnum);
	}
}
