package com.sc.speedcampus.user.review.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sc.speedcampus.user.review.dao.ReviewDAO;
import com.sc.speedcampus.user.review.vo.ReviewVO;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	ReviewDAO reviewDAO;
	
	@Override
	public void insertReview(ReviewVO vo) {
		reviewDAO.insertReview(vo);
	}
	
	@Override
	public List<ReviewVO> getReviewList(int conum){
		return reviewDAO.getReviewList(conum);
	}
	
	@Override
	public void updateReview(ReviewVO vo) {
		reviewDAO.updateReview(vo);
	}
	
	@Override
	public void deleteReview(ReviewVO vo) {
		reviewDAO.deleteReview(vo);
	}
	
	@Override
	public String idCheck(int rnum) {
		return reviewDAO.idCheck(rnum);
	}
	
	@Override
	public int countReview(int num){
	 	return reviewDAO.countReview(num);
	 }
	
	/*
	 * @Override public double averageReview(int starscore) { return
	 * reviewDAO.averageReview(starscore); }
	 */
}
