//*************************************************
//*************USER NOTICE CONTROLLER**************
//****************************************************

package com.sc.speedcampus.user.notice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.user.notice.service.NoticeService;
import com.sc.speedcampus.user.notice.vo.NoticeVO;
import com.sc.speedcampus.util.PagingVO;

@Controller
@SessionAttributes("notice")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	//Load Notice List In User Page 
	@RequestMapping(value = "/noticeList.do", method = RequestMethod.GET)
	public String noticeList(PagingVO vo, Model model, 
			@RequestParam(value = "nowPage", required=false)String nowPage,
			@RequestParam(value = "cntPerPage", required =false)String cntPerPage) {
		
		//Paging Processing
		int total = noticeService.countNotice();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		}else if (nowPage ==null) {
			nowPage = "1";
		}else if (cntPerPage == null) {
			cntPerPage = "5";
		}
		vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", vo);
		model.addAttribute("noticeList", noticeService.getNoticeList(vo));
		return "notice/noticeList";
	}
	
	//Read The Notice In User Page
	@RequestMapping(value ="/noticeRead.do", method = RequestMethod.GET)
	public String noticeRead(Model model, HttpServletRequest request) throws Exception{
		System.out.println("Move to Notice Read Page In User PAGE");
		int num = Integer.parseInt(request.getParameter("num"));
		model.addAttribute("notice", noticeService.getNotice(num));
		
		String mapping = request.getServletPath();
		System.out.println(mapping);
		
		if(mapping.equals("/noticeRead.do")) return "notice/noticeRead";
		
		return "notice/noticeRead";
	}
	
	
}
