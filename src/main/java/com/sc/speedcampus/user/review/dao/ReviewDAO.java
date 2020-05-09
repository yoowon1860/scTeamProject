package com.sc.speedcampus.user.review.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sc.speedcampus.user.review.vo.ReviewVO;
import com.sc.speedcampus.util.SqlSessionFactoryBean;

@Repository
public class ReviewDAO {

	@Autowired
	private SqlSession sqlSession;
	public ReviewDAO() {
		sqlSession = SqlSessionFactoryBean.getSqlSessionInstance();
	}
	
	//¸®ºä ÀÛ¼º
	public void insertReview(ReviewVO vo) {
		System.out.println(vo);
		sqlSession.insert("ReviewVO.insertReview", vo);
	}
	
	//¸®ºä¸ñ·Ï °¡Á®¿À±â
	public List<ReviewVO> getReviewList(int conum){
		return sqlSession.selectList("ReviewVO.getReviewList", conum);
	}
	
	//¸®ºä ¼öÁ¤
	public void updateReview(ReviewVO vo) {
		sqlSession.update("ReviewVO.updateReview", vo);
	}
	
	//¸®ºä »èÁ¦
	public void deleteReview(ReviewVO vo) {
		sqlSession.delete("ReviewVO.deleteReview", vo);
	}
	
	//¸®ºä¾´ »ç¶÷ÀÇ ¾ÆÀÌµð return
	public String idCheck(int rnum) {
		return sqlSession.selectOne("ReviewVO.reviewUserIdCheck", rnum);
	}
	
	//¸®ºä ÃÑ °³¼ö
	public int countReview(int num) {
		return sqlSession.selectOne("ReviewVO.countReview",num);
	}
	
	//¸®ºä º°Á¡ Æò±Õ
	//public double averageReview(int starscore) {
	//	return sqlSession.selectOne("ReviewVO.averageReview", starscore);
	//}
}
