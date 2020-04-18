package com.sc.speedcampus.admin.qna.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.admin.qna.vo.QcommentVO;
import com.sc.speedcampus.util.SqlSessionFactoryBean;

@Repository
public class QcommentDAO {

	@Autowired
	private SqlSession sqlSession;
	public QcommentDAO() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	// 답변 추가
	public void insertA(QcommentVO vo) {
		sqlSession.insert("QcommentDAO.insertA", vo);
	}
	
}
