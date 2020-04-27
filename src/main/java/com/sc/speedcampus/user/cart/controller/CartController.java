package com.sc.speedcampus.user.cart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.sc.speedcampus.user.cart.service.CartCountService;
import com.sc.speedcampus.user.cart.service.DeleteCartService;
import com.sc.speedcampus.user.cart.service.GetCartListService;
import com.sc.speedcampus.user.cart.service.InsertCartService;
import com.sc.speedcampus.user.cart.vo.CartVO;
import com.sc.speedcampus.user.member.vo.UserVO;

@Controller
@SessionAttributes("cartList")
public class CartController {

	@Autowired
	private InsertCartService insertCart; 
	@Autowired
	private GetCartListService getCartList;
	@Autowired
	private CartCountService cartCount;
	@Autowired
	private DeleteCartService deleteCart;
	
	@RequestMapping(value="insertCart.do", method = RequestMethod.POST)
	public String insert(CartVO vo) {
	try{
		System.out.println("장바구니 추가");
		insertCart.insert(vo);
		return "redirect:myCart.do?email="+vo.getEmail();
	}catch(DataIntegrityViolationException e) {
		return  "member/login";
	}
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
	
	@RequestMapping(value="deleteCart.do", method=RequestMethod.POST)
	public String deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO vo) throws Exception {
		UserVO userVO = (UserVO) session.getAttribute("user");
		String email = userVO.getEmail();
		
		int result = 0;
		int num = 0;
		
		if(userVO!=null) {
			vo.setEmail(email);
		
		 for(String i : chArr) {   
			   num = Integer.parseInt(i);
			   deleteCart.delete(num);

				 System.out.println(num+"삭제");
			  }
		 result =1;
		}
		 return "redirect:myCart.do?email="+vo.getEmail();
	}
	
}
