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

	// ´ñ±Û ÀÛ¼º
	public void insertScomment(ScommentVO vo) {
		System.out.println(vo);
		sqlSession.insert("ScommentVO.insertScomment",vo);
	}
	
	// ´ñ±Û¸ñ·Ï °¡Á®¿À±â
	public List<ScommentVO> getScommentList(int snum){
		return sqlSession.selectList("ScommentVO.getScommentList", snum);		
	}
	
	// ´ñ±Û ¼öÁ¤
	public void updateScomment(ScommentVO vo) {
		sqlSession.update("ScommentVO.updateScomment",vo);
	}
	
	// ´ñ±Û »èÁ¦
	public void deleteScomment(ScommentVO vo) {
		sqlSession.delete("ScommentVO.deleteScomment",vo);
	}
	
	// ´ñ±Û¾´»ç¶÷ÀÇ ¾ÆÀÌµð return
	public String idCheck(int cnum) {
		return sqlSession.selectOne("ScommentVO.sCommentUserIdCheck",cnum);
	}
	
	// ´ñ±Û ÃÑ°³¼ö
	public int countScomment(int num) {
		return sqlSession.selectOne("ScommentVO.countScomment",num);
	}
}
