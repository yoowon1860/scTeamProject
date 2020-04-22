package com.sc.speedcampus.user.cart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.user.cart.service.CartCountService;
import com.sc.speedcampus.user.cart.service.GetCartListService;
import com.sc.speedcampus.user.cart.service.InsertCartService;
import com.sc.speedcampus.user.cart.vo.CartVO;

@Controller
@SessionAttributes("cartList")
public class CartController {

	@Autowired
	private InsertCartService insertCart; 
	@Autowired
	private GetCartListService getCartList;
	@Autowired
	private CartCountService cartCount;
	
	@RequestMapping(value="insertCart.do", method = RequestMethod.POST)
	public String insert(CartVO vo) {
		System.out.println("장바구니 추가");
		insertCart.insert(vo);
		return "redirect:myCart.do?email="+vo.getEmail();
	}
	
	@RequestMapping(value="myCart.do", method = RequestMethod.GET)
	public String myCartView(HttpServletRequest request,CartVO vo, Model model) {
		System.out.println("내 장바구니 화면");
		HttpSession session = request.getSession(false);
		session.getAttribute("user") ;
		String email = vo.getEmail();
		model.addAttribute("totalPrice", cartCount.totalPrice(email)); //cart에 담긴 총액 
		model.addAttribute("total", cartCount.listCount(email));		//cart에 물품이 담겨있는지 확인
		model.addAttribute("cartList", getCartList.cartList(email));	//email을 통해 데이터 가져오기
		return "my/userCart";
	}
	
}
