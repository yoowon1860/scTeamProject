package com.sc.speedcampus.user.scomment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.scomment.vo.ScommentVO;
import com.sc.speedcampus.util.SqlSessionFactoryBean;

@Repository
public class ScommentDAO {
	
	@Autowired
	private SqlSession sqlSession;
	public ScommentDAO() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}

	public void insertScomment(ScommentVO vo) {
		System.out.println(vo);
		sqlSession.insert("ScommentVO.insertScomment",vo);
	}
	
	public List<ScommentVO> getScommentList(int snum){
		return sqlSession.selectList("ScommentVO.getScommentList", snum);		
	}
	
	public void updateScomment(ScommentVO vo) {
		sqlSession.update("ScommentVO.updateScomment",vo);
	}
	
	public void deleteScomment(ScommentVO vo) {
		sqlSession.delete("ScommentVO.deleteScomment",vo);
	}
}
