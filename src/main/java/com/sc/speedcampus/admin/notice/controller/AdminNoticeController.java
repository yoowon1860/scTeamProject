//****************************************************
//***************ADMIN NOTICE CONTROLLER**************
//****************************************************

package com.sc.speedcampus.admin.notice.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sc.speedcampus.user.notice.service.NoticeService;
import com.sc.speedcampus.user.notice.vo.NoticeVO;
import com.sc.speedcampus.util.PagingVO;

@Controller
public class AdminNoticeController {

	@Autowired
	private NoticeService noticeService;

	// In Admin ==>Load Notice Writing Page
	@RequestMapping(value = "/noticeWrite.mdo")
	public String noticeWriteView() {
		System.out.println("Move to Notice Writing Page");
		return "aBoard/noticeWrite";
	}
	
	// In Admin ==> Insert Notice.
	@RequestMapping(value = "/noticeWriteAction.mdo", method = RequestMethod.POST)
	public String noticeWrite(NoticeVO vo) {
		System.out.println("Insert the Notice!/ADMIN");
		noticeService.insertNotice(vo);
		return "redirect:noticeList.mdo";
	}

	/*
	 * //In Admin ==> 게시물 수정을 처리해줄 메소드
	 * 
	 * @RequestMapping(value="/noticeUpdate.mdo", method = RequestMethod.POST)
	 * public String updateNotice2(HttpServletRequest request, RedirectAttributes
	 * attr) { noticeService.updateNotice2(request); attr.addFlashAttribute("msg",
	 * "게시글 수정"); return "redirect:noticeList.mdo"; }
	 */
	
	
	// In Admin ==>Load Notice Modifying Page
	@RequestMapping(value="/noticeUpdate.mdo")
	public String noticeUpdateView(Model model, HttpServletRequest request) throws Exception {
		System.out.println("Move to Notice Modifying Page");

		int num = Integer.parseInt(request.getParameter("num"));
		model.addAttribute("notice", noticeService.getNotice(num));
		
		return "aBoard/noticeUpdate";
	}
	
	// In Admin ==> Modify Notice!
	@RequestMapping("/noticeUpdateAction.mdo")
	public String noticeUpdate(NoticeVO vo) {
		System.out.println("Modify Notice!");
		noticeService.updateNotice(vo);

		//return "redirect:noticeUpdate.mdo?num="+vo.getNum();
		return "redirect:noticeList.mdo";
	}

	//In Admin ==> Read the Notice 
	@RequestMapping(value = "/noticeRead.mdo")
	public String noticeRead(Model model, HttpServletRequest request) throws Exception {
		System.out.println("Read the Notice ");
		int num = Integer.parseInt(request.getParameter("num"));
		model.addAttribute("notice", noticeService.getNotice(num));
				
		return "aBoard/noticeRead";
	}
	
	// In Admin ==> Delete Notice!
	@RequestMapping("/noticeDelete.mdo")
	public String noticeDelete(NoticeVO vo) {
		System.out.println("Delete Notice!");
		noticeService.deleteNotice(vo);
		return "redirect:noticeList.mdo";
	}

	
	// In Admin ==> Load Notice List
	@RequestMapping(value = "/noticeList.mdo", method = RequestMethod.GET)
	public String noticeList(PagingVO vo, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {

		// Paging Proceed
		int total = noticeService.countNotice();
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
		model.addAttribute("noticeList", noticeService.getNoticeList(vo));
		return "aBoard/noticeList";
	}

}
