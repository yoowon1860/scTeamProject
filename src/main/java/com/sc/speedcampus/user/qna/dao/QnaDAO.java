package com.sc.speedcampus.user.qna.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.qna.vo.QnaVO;
import com.sc.speedcampus.user.study.vo.StudyVO;
import com.sc.speedcampus.util.PagingVO;
import com.sc.speedcampus.util.SqlSessionFactoryBean;

@Repository
public class QnaDAO {

	@Autowired
	private SqlSession sqlSession;
	public QnaDAO() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	// ���� �߰�
	public void insertQ(QnaVO vo) {
		sqlSession.insert("QnaDAO.insertQ", vo);
	}
	
	// ���� ����
	public void updateQ(QnaVO vo) { 
		sqlSession.update("QnaDAO.updateQ", vo); 
	} 

	// ���� ����
	public void deleteQ(QnaVO vo) { 
		sqlSession.delete("QnaDAO.deleteQ", vo); 
	}
	
	// ���� �б�
	public QnaVO getQ(int qnum) { 
		return (QnaVO) sqlSession.selectOne("QnaDAO.getQ", qnum); 
	} 
	
	// ��������Ʈ �б�
	public List<QnaVO> getQList(String writer) { 
		return sqlSession.selectList("QnaDAO.getQList", writer);
	}
	
	// ���� ��ü ��������(admin��)
	public List<QnaVO> getQListAll() { 
		return sqlSession.selectList("QnaDAO.getQListAll");
	}
	
	// �亯 ���� ����(admin��)
	public void updateAnswerState(int qnum) {
		sqlSession.update("QnaDAO.updateAnswerState",qnum);
	}
}
