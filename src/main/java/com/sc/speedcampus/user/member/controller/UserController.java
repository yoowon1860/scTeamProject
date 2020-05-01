package com.sc.speedcampus.user.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.admin.course.service.GetCourseService;
import com.sc.speedcampus.user.cart.service.CartCountService;
import com.sc.speedcampus.user.member.service.GetUserService;
import com.sc.speedcampus.user.member.service.RegisterService;
import com.sc.speedcampus.user.member.service.UpdateService;
import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.service.GetMyCourseService;

@Controller
@SessionAttributes({"total", "userList"})
public class UserController {

	@Autowired
	private GetUserService getUserService;
	@Autowired
	private RegisterService registerService;
	@Autowired
	private UpdateService updateService;
	@Autowired
	private CartCountService cartCount;
	@Autowired
	private GetMyCourseService myCourseService;
	@Autowired 
	private GetCourseService getCourseService;
	
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String register(UserVO vo) {
		registerService.register(vo);
		return "member/login";
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String registerView(UserVO vo) {
		System.out.println("회원가입 화면 호출");
		return "member/register";
	}
	
	@RequestMapping(value="myUpdate.do")
	public String updateView(HttpServletRequest request) {
		System.out.println("정보수정 화면 호출");
		HttpSession session = request.getSession(false);
		//이메일을 가지고 디비가서 유저데이터 전체를 받아오는 서비스가 필요...
		session.getAttribute("user") ;
		return "my/userUpdate";
	}
	
	@RequestMapping(value="userUpdate.do", method = RequestMethod.POST)
	public String update(UserVO vo, Model model) {
		System.out.println("정보수정 처리");
		updateService.update(vo);
		return "userHome";
	}
	
	@RequestMapping(value="userHome.do")
	public String homeView(HttpServletRequest request, Model model) {
		System.out.println("홈 화면 호출");
		HttpSession session = request.getSession(false);
		session.getAttribute("user") ;
		UserVO userVO = (UserVO)session.getAttribute("user");
		if(userVO != null) {
		model.addAttribute("total", cartCount.listCount(userVO.getEmail())); //장바구니에 담은 갯수 표출
		
		// 인기강좌 가져오기
		model.addAttribute("popularCourse", myCourseService.getPopularCourse());
		
		// 최신강좌 가져오기
		model.addAttribute("newCourse", getCourseService.getNewCourse());
		
		return "userHome";
		}else {
			return "userHome";	//userVO null일 때 그냥 홈페이지 화면 호출
		}
	}
	
	// user 리스트 불러오기
	@RequestMapping("getUserList.mdo")
	public String getUserList(Model model) {
		model.addAttribute("userList", getUserService.getUserList());
		return "aMember/memberList";
	}
	
	// 유저 삭제
	@RequestMapping("deleteUser.mdo")
	public String deleteUser(UserVO vo) {
		getUserService.deleteUser(vo);
		return "redirect:getUserList.mdo";
	}
	
	
	
}
