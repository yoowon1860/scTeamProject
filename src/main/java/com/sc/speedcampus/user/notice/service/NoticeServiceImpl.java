package com.sc.speedcampus.user.notice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.notice.dao.NoticeDAO;
import com.sc.speedcampus.user.notice.vo.NoticeVO;
import com.sc.speedcampus.util.PagingVO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{

	@Autowired
	private NoticeDAO noticeDAO;
	
	@Override
	public NoticeVO getNotice(int num) {
		noticeDAO.hitUpdate(num);
		return noticeDAO.getNotice(num);
	}
	
	@Override
	public List<NoticeVO> getNoticeList(PagingVO vo){
		return noticeDAO.getNoticeList(vo);
	}
	
	@Override
	public int countNotice() {
		return noticeDAO.countNotice();
	}
	
	
}
