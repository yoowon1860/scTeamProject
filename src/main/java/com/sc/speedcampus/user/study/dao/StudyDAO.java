package com.sc.speedcampus.user.study.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.study.vo.StudyVO;
import com.sc.speedcampus.util.PagingVO;
import com.sc.speedcampus.util.SqlSessionFactoryBean;

@Repository
public class StudyDAO {

	@Autowired
	private SqlSession sqlSession;
	public StudyDAO() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	// ���͵� �߰�
	public void insertStudy(StudyVO vo) {
		sqlSession.insert("StudyDAO.insertStudy", vo);
	}
	
	// ���͵� ����
	public void updateStudy(StudyVO vo) { 
		sqlSession.update("StudyDAO.updateStudy", vo); 
	} 

	// ���͵� ����
	public void deleteStudy(StudyVO vo) { 
		sqlSession.delete("StudyDAO.deleteStudy", vo); 
	}
	
	// ���͵� �б�
	public StudyVO getStudy(int num) { 
		return (StudyVO) sqlSession.selectOne("StudyDAO.getStudy", num); 
	} 
	
	// ���͵𸮽�Ʈ �б�
	public List<StudyVO> getStudyList(PagingVO vo) { 
		return sqlSession.selectList("StudyDAO.getStudyList", vo);
	}
	
	// ��ȸ�� ����
	public void hitUpdate(int num) {
		sqlSession.update("StudyDAO.hitUpdate", num );
	}
	
	// �� �Խù� ����
	public int countStudy() {
		return sqlSession.selectOne("StudyDAO.countStudy");
	}

}
