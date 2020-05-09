package com.sc.speedcampus.user.review.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.review.service.ReviewService;
import com.sc.speedcampus.user.review.vo.ReviewVO;

@Controller
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping("reviewRead.do")
	public String reviewRead(Model model, HttpServletRequest request) throws Exception{
		System.out.println("Review Page ");
		int num = Integer.parseInt(request.getParameter("num"));
		model.addAttribute("review", reviewService.getReviewList(num));
	
		String mapping = request.getServletPath();
		System.out.println(mapping);
		
		if(mapping.equals("/reviewRead.do")) return "courses/reviewRead";
		
		return "courses/reviewRead";
	}
	
	//¸®ºä Ãß°¡
	@ResponseBody
	@RequestMapping("insertReview.do")
	public void insertReview(ReviewVO vo, HttpSession session) {
		
		UserVO user = (UserVO)session.getAttribute("user");
		vo.setUserId(user.getEmail());
		
		reviewService.insertReview(vo);
	}
	
	//¸®ºä ¼öÁ¤
	@ResponseBody
	@RequestMapping("updateReview.do")
	public int updateReview(ReviewVO vo, HttpSession session) throws Exception{
		
		int result =0;
		
		UserVO user = (UserVO)session.getAttribute("user");
		String userId = reviewService.idCheck(vo.getRnum());
		if(user.getEmail().equals(userId)) {
			
			vo.setUserId(user.getEmail());
			reviewService.updateReview(vo);
			result =1;
		}
		
		return result;
	}
	
	//¸®ºä »èÁ¦
	@ResponseBody
	@RequestMapping("deleteReview.do")
	public int getReviewList(ReviewVO vo, HttpSession session) throws Exception{
		
		int result=0;
		UserVO user = (UserVO)session.getAttribute("user");
		String userId = reviewService.idCheck(vo.getRnum());
		System.out.println(user.getEmail() + " " + userId);
		
		if(user.getEmail().equals(userId)) {
			
			vo.setUserId(user.getEmail());
			reviewService.deleteReview(vo);
			result=1;
		}
		
		return result;
				
	}
	
	//¸®ºä ¸ñ·Ï ºÒ·¯¿À±â
	@ResponseBody
	@RequestMapping(value="reviewList.do", method = RequestMethod.GET)
	public List<ReviewVO> getReviewList(@RequestParam("conum") int conum){
		return reviewService.getReviewList(conum);
	}
	
	
}
