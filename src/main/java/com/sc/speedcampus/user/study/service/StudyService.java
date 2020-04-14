package com.sc.speedcampus.user.study.service;

import java.util.List;

import com.sc.speedcampus.user.study.vo.StudyVO;
import com.sc.speedcampus.util.PagingVO;

public interface StudyService {

	void insertStudy(StudyVO vo);
	void updateStudy(StudyVO vo);
	void deleteStudy(StudyVO vo); 
	StudyVO getStudy(int num);
	List<StudyVO> getStudyList(PagingVO vo);
	int countStudy();
	List<StudyVO> popularStudy();
	

}
