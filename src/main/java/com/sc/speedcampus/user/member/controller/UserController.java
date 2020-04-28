package com.sc.speedcampus.user.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.user.cart.service.CartCountService;
import com.sc.speedcampus.user.member.service.GetUserService;
import com.sc.speedcampus.user.member.service.RegisterService;
import com.sc.speedcampus.user.member.service.UpdateService;
import com.sc.speedcampus.user.member.vo.UserVO;

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
	
	@RequestMapping(value = "register.do", method = RequestMethod.POST)
	public String register(UserVO vo) {
		registerService.register(vo);
		return "member/login";
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String registerView(UserVO vo) {
		System.out.println("ȸ������ ȭ�� ȣ��");
		return "member/register";
	}
	
	@RequestMapping(value="myUpdate.do")
	public String updateView(HttpServletRequest request) {
		System.out.println("�������� ȭ�� ȣ��");
		HttpSession session = request.getSession(false);
		//�̸����� ������ ��񰡼� ���������� ��ü�� �޾ƿ��� ���񽺰� �ʿ�...
		session.getAttribute("user") ;
		return "my/userUpdate";
	}
	
	@RequestMapping(value="userUpdate.do", method = RequestMethod.POST)
	public String update(UserVO vo, Model model) {
		System.out.println("�������� ó��");
		updateService.update(vo);
		return "userHome";
	}
	
	@RequestMapping(value="userHome.do")
	public String homeView(HttpServletRequest request, Model model) {
		System.out.println("Ȩ ȭ�� ȣ��");
		HttpSession session = request.getSession(false);
		session.getAttribute("user") ;
		UserVO userVO = (UserVO)session.getAttribute("user");
		model.addAttribute("total", cartCount.listCount(userVO.getEmail())); //��ٱ��Ͽ� ���� ���� ǥ��
		return "userHome";
	}
	
	// user ����Ʈ �ҷ�����
	@RequestMapping("getUserList.mdo")
	public String getUserList(Model model) {
		model.addAttribute("userList", getUserService.getUserList());
		return "aMember/memberList";
	}
	
	// ���� ����
	@RequestMapping("deleteUser.mdo")
	public String deleteUser(UserVO vo) {
		getUserService.deleteUser(vo);
		return "redirect:getUserList.mdo";
	}
	
	
	
}
