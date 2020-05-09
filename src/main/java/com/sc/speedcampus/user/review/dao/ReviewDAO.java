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
	
	//���� �ۼ�
	public void insertReview(ReviewVO vo) {
		System.out.println(vo);
		sqlSession.insert("ReviewVO.insertReview", vo);
	}
	
	//������ ��������
	public List<ReviewVO> getReviewList(int conum){
		return sqlSession.selectList("ReviewVO.getReviewList", conum);
	}
	
	//���� ����
	public void updateReview(ReviewVO vo) {
		sqlSession.update("ReviewVO.updateReview", vo);
	}
	
	//���� ����
	public void deleteReview(ReviewVO vo) {
		sqlSession.delete("ReviewVO.deleteReview", vo);
	}
	
	//���侴 ����� ���̵� return
	public String idCheck(int rnum) {
		return sqlSession.selectOne("ReviewVO.reviewUserIdCheck", rnum);
	}
	
	//���� �� ����
	public int countReview(int num) {
		return sqlSession.selectOne("ReviewVO.countReview",num);
	}
	
	//���� ���� ���
	//public double averageReview(int starscore) {
	//	return sqlSession.selectOne("ReviewVO.averageReview", starscore);
	//}
}
