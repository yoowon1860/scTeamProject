package com.sc.speedcampus.user.study.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.study.dao.StudyDAO;
import com.sc.speedcampus.user.study.vo.StudyVO;
import com.sc.speedcampus.util.PagingVO;

@Service("studyService")
public class StudyServiceImpl implements StudyService{

	@Autowired
	private StudyDAO studyDAO;
	
	@Override
	public void insertStudy(StudyVO vo) {
		studyDAO.insertStudy(vo);
		
	}

	@Override
	public void updateStudy(StudyVO vo) {
		studyDAO.updateStudy(vo);
		
	}

	@Override
	public void deleteStudy(StudyVO vo) {
		studyDAO.deleteStudy(vo);
		
	}

	@Override
	public StudyVO getStudy(int num) {
		// 조회수 증가
		studyDAO.hitUpdate(num);
		return studyDAO.getStudy(num);
	}

	@Override
	public List<StudyVO> getStudyList(PagingVO vo) {
		return studyDAO.getStudyList(vo);
	}

	@Override
	public int countStudy() {
		return studyDAO.countStudy();
	}


}
