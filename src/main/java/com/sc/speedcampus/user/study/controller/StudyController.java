package com.sc.speedcampus.user.study.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sc.speedcampus.user.scomment.service.ScommentService;
import com.sc.speedcampus.user.study.service.StudyService;
import com.sc.speedcampus.user.study.vo.StudyVO;
import com.sc.speedcampus.util.PagingVO;

@Controller
public class StudyController {
	
	@Autowired
	private StudyService studyService;
	@Autowired
	private ScommentService sCommentService;
	
	// 스터디 목록 가져오기
	@RequestMapping(value = "/studyList.do", method = RequestMethod.GET )
	public String studyList(PagingVO vo, Model model, 
			@RequestParam(value="nowPage", required=false)String nowPage, 
			@RequestParam(value="cntPerPage", required=false)String cntPerPage) {
			
		// 페이징 처리
		int total = studyService.countStudy();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";	
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("studyList", studyService.getStudyList(vo));
		
		return "study/studyList";
	}
	
	// 스터디 읽기
	@RequestMapping(value = {"/studyRead.do", "/studyUpdate.do"})
	public String studyRead(Model model, HttpServletRequest request) throws Exception {
		System.out.println("스터디 읽기화면으로 이동");
		int num = Integer.parseInt(request.getParameter("num"));
		model.addAttribute("study", studyService.getStudy(num));
		
		String mapping = request.getServletPath();
		System.out.println(mapping);
		
		// studyRead.do 로 들어올 때
		if(mapping.equals("/studyRead.do")) {
			
			// 인기 게시물 가져오기
			model.addAttribute("popularStudy", studyService.popularStudy());
			System.out.println(studyService.popularStudy());
			
			// 댓글 수 가져오기
			model.addAttribute("countScomment",sCommentService.countScomment(num));
			
			return "study/studyRead";
		}
		// studyUpdate.do 로 들어올 때
		else return "study/studyUpdate";
		
		
	}
	
	// 스터디 등록하기
	@RequestMapping(value = "/studyWriteAction.do", method = RequestMethod.POST)
	public String studyWrite(StudyVO vo) {
		System.out.println("스터디 등록");
		studyService.insertStudy(vo);
		return "redirect:studyList.do";
	}
	
	// 스터디 쓰기화면 가져오기
	@RequestMapping(value = "/studyWrite.do")
	public String studyWriteView() {
		System.out.println("스터디 쓰기화면으로 이동");
		return "study/studyWrite";
	}
	
	// 스터디 수정하기
	@RequestMapping("/studyUpdateAction.do")
	public String studyUpdate(StudyVO vo) {
		System.out.println("스터디 수정");
		studyService.updateStudy(vo);
		
		return "redirect:studyRead.do?num="+vo.getNum();
	}
	
	// 스터디 삭제하기
	@RequestMapping("/studyDelete.do")
	public String studyDelete(StudyVO vo){
		System.out.println("스터디 삭제");
		studyService.deleteStudy(vo);
		return "redirect:studyList.do";
		
	}
		

}
