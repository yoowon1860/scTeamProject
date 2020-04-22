package com.sc.speedcampus.user.mycourse.service;

import java.util.List;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;
import com.sc.speedcampus.user.mycourse.vo.couseMyCourseData;

public interface GetMyCourseService {

	public List<MyCourseVO> getMyCourseIng(UserVO vo);
	public List<MyCourseVO> getMyCourseEnd(UserVO vo);
	//public couseMyCourseData getMyCourseList(String email);
	public List<MyCourseVO> getMyCourseList(String email);
}
