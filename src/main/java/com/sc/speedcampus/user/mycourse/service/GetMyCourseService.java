package com.sc.speedcampus.user.mycourse.service;

import java.util.List;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;

public interface GetMyCourseService {

	
	public List<MyCourseVO> getMyCourseList(String email);
	public List<MyCourseVO> getPopularCourse();
	
	public void insertMyCourse(MyCourseVO vo);
}
