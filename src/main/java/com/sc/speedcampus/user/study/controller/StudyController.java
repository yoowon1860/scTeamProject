package com.sc.speedcampus.user.study.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.user.scomment.service.ScommentService;
import com.sc.speedcampus.user.scomment.vo.ScommentVO;
import com.sc.speedcampus.user.study.service.StudyService;
import com.sc.speedcampus.user.study.vo.StudyVO;
import com.sc.speedcampus.util.PagingVO;

@Controller
@SessionAttributes("writer")
public class StudyController {
	
	@Autowired
	private StudyService studyService;
	@Autowired
	private ScommentService scommentService;
	
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
		if(mapping.equals("/studyRead.do")) {
			
			// 댓글 리스트 불러오기
			List<ScommentVO> comment = scommentService.getScommentList(num);
			model.addAttribute("comment", comment);
			
			return "study/studyRead";
		}
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
