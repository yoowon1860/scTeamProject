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

	@Override
	public List<QnaVO> getQListAll() {
		return qnaDAO.getQListAll();
	}
}
