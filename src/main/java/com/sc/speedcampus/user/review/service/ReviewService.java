package com.sc.speedcampus.user.review.service;

import java.util.List;

import com.sc.speedcampus.user.review.vo.ReviewVO;

public interface ReviewService {
	
	public void insertReview(ReviewVO vo);
	public void updateReview(ReviewVO vo);
	public void deleteReview(ReviewVO vo);
	public List<ReviewVO> getReviewList(int rnum);
	public String idCheck(int rnum);
	public int countReview(int num);
	//public double averageReview(int starscore);
}
