package com.sc.speedcampus.user.notice.service;

import java.util.List;

import com.sc.speedcampus.user.notice.vo.NoticeVO;
import com.sc.speedcampus.util.PagingVO;

public interface NoticeService {

	NoticeVO getNotice(int num);
	List<NoticeVO> getNoticeList(PagingVO vo);
	int countNotice();
	
}
