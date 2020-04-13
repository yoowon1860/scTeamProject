package com.sc.speedcampus.user.notice.service;

import java.util.List;

import com.sc.speedcampus.user.notice.vo.NoticeVO;
import com.sc.speedcampus.util.PagingVO;

public interface NoticeService {

	NoticeVO getNotice(int num);
	List<NoticeVO> getNoticeList(PagingVO vo);
	int countNotice();
	void insertNotice(NoticeVO vo);
	void updateNotice(NoticeVO vo);
	void deleteNotice(NoticeVO vo);
	
}
