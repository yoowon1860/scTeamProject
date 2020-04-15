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
	 * @Override public void updateNotice2(HttpServletRequest request) { //�Ķ���� �б�
	 * //�Ķ���͸� �̿��ؼ� ������ �۾��������� ����
	 * 
	 * String title = request.getParameter("title"); String content =
	 * request.getParameter("content");
	 * 
	 * //DAO �޼ҵ带 ȣ�� NoticeVO vo = new NoticeVO(); vo.setContent(content);
	 * vo.setTitle(title);
	 * 
	 * noticeDAO.updateNotice(vo); }
	 */
	
	@Override
	public void deleteNotice(NoticeVO vo) {
		noticeDAO.deleteNotice(vo);
	}
	
	
}
