package com.sc.speedcampus.user.notice.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	
	@Override
	public void insertNotice(NoticeVO vo) {
		noticeDAO.insertNotice(vo);
	}
	
	@Override
	public void updateNotice(NoticeVO vo) {
		noticeDAO.updateNotice(vo);
	}
	
	/*
	 * @Override public void updateNotice2(HttpServletRequest request) { //파라미터 읽기
	 * //파라미터를 이용해서 수행할 작업이있으면 수행
	 * 
	 * String title = request.getParameter("title"); String content =
	 * request.getParameter("content");
	 * 
	 * //DAO 메소드를 호출 NoticeVO vo = new NoticeVO(); vo.setContent(content);
	 * vo.setTitle(title);
	 * 
	 * noticeDAO.updateNotice(vo); }
	 */
	
	@Override
	public void deleteNotice(NoticeVO vo) {
		noticeDAO.deleteNotice(vo);
	}
	
	
}
