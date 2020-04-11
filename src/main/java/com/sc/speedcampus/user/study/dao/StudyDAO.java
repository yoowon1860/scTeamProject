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
	
	// 스터디 추가
	public void insertStudy(StudyVO vo) {
		sqlSession.insert("StudyDAO.insertStudy", vo);
	}
	
	// 스터디 수정
	public void updateStudy(StudyVO vo) { 
		sqlSession.update("StudyDAO.updateStudy", vo); 
	} 

	// 스터디 삭제
	public void deleteStudy(StudyVO vo) { 
		sqlSession.delete("StudyDAO.deleteStudy", vo); 
	}
	
	// 스터디 읽기
	public StudyVO getStudy(int num) { 
		return (StudyVO) sqlSession.selectOne("StudyDAO.getStudy", num); 
	} 
	
	// 스터디리스트 읽기
	public List<StudyVO> getStudyList(PagingVO vo) { 
		return sqlSession.selectList("StudyDAO.getStudyList", vo);
	}
	
	// 조회수 증가
	public void hitUpdate(int num) {
		sqlSession.update("StudyDAO.hitUpdate", num );
	}
	
	// 총 게시물 개수
	public int countStudy() {
		return sqlSession.selectOne("StudyDAO.countStudy");
	}

}
