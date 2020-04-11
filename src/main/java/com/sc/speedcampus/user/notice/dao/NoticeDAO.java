package com.sc.speedcampus.user.notice.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.notice.vo.NoticeVO;
import com.sc.speedcampus.util.PagingVO;
import com.sc.speedcampus.util.SqlSessionFactoryBean;

@Repository
public class NoticeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	public NoticeDAO() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	//공지사항 읽기
	public NoticeVO getNotice(int num) {
		return (NoticeVO) sqlSession.selectOne("NoticeDAO.getNotice", num);
	}
	
	//공지사항 리스트 읽기
	public List<NoticeVO> getNoticeList(PagingVO vo){
		return sqlSession.selectList("NoticeDAO.getNoticeList", vo);
	}
	
	//조회수 증가
	public void hitUpdate(int num) {
		sqlSession.update("NoticeDAO.hitUpdate", num);
	}
	
	//총 게시물 개수
	public int countNotice() {
		return sqlSession.selectOne("NoticeDAO.countNotice");
	}
}
