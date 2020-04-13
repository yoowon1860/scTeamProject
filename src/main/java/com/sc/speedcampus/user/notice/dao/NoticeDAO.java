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
	
	//�������� �б�
	public NoticeVO getNotice(int num) {
		return (NoticeVO) sqlSession.selectOne("NoticeDAO.getNotice", num);
	}
	
	//�������� ����Ʈ �б�
	public List<NoticeVO> getNoticeList(PagingVO vo){
		return sqlSession.selectList("NoticeDAO.getNoticeList", vo);
	}
	
	//��ȸ�� ����
	public void hitUpdate(int num) {
		sqlSession.update("NoticeDAO.hitUpdate", num);
	}
	
	//�� �Խù� ����
	public int countNotice() {
		return sqlSession.selectOne("NoticeDAO.countNotice");
	}
	
	/////////////////���⼭���� Admin page���� �ʿ��Ѱ�
	//�������� ����
	public void deleteNotice(NoticeVO vo) {
		sqlSession.delete("NoticeDAO.deleteNotice", vo);
	}
	
	//�������� �߰�
	public void insertNotice(NoticeVO vo) {
		sqlSession.insert("NoticeDAO.insertNotice", vo);
	}
	
	//�������� ����
	public void updateNotice(NoticeVO vo) {
		sqlSession.update("NoticeDAO.updateNotice", vo);
	}
}
