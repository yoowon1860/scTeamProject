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
import com.sc.speedcampus.user.cart.service.GetCartOneService;
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
	@Autowired
	private GetCartOneService getCartOne;
	
	@RequestMapping(value="insertCart.do", method = RequestMethod.POST)
	public String insert(CartVO vo) {
	try{
		System.out.println("��ٱ��� �߰�");
		insertCart.insert(vo);
		return "redirect:myCart.do?email="+vo.getEmail();
	}catch(DataIntegrityViolationException e) { // ���Ἲ ���� ���ݽ� �α���â���� �̵�(��ٱ��� �߰� �� ���ǰ� ���� ���) 
		return  "member/login";
	}
	}
	
	@RequestMapping(value="myCart.do", method = RequestMethod.GET)
	public String myCartView(HttpServletRequest request,CartVO vo, Model model) {
		System.out.println("�� ��ٱ��� ȭ��");
		try {
		HttpSession session = request.getSession(false);
		session.getAttribute("user") ;
		UserVO userVO = (UserVO)session.getAttribute("user");
		model.addAttribute("totalPrice", cartCount.totalPrice(userVO.getEmail())); //cart�� ��� �Ѿ� 
		model.addAttribute("total", cartCount.listCount(userVO.getEmail()));		//cart�� ��ǰ�� ����ִ��� Ȯ��
		model.addAttribute("cartList", getCartList.cartList(userVO.getEmail()));	//email�� ���� ������ ��������
		return "my/userCart";
		}catch(NullPointerException e) {
			return "my/userCartEmpty";
		}
	}
	
	@RequestMapping(value="deleteCart.do", method=RequestMethod.POST)
	public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO vo) throws Exception {
		UserVO userVO = (UserVO) session.getAttribute("user");
		String email = userVO.getEmail();
		
		int result = 0;
		int num = 0;
		
		if(userVO!=null) {
			vo.setEmail(email);
		
		 for(String i : chArr) {   
			   num = Integer.parseInt(i);
			   vo.setNum(num);
			   deleteCart.delete(vo);

				 System.out.println(num+"�� ��ٱ��� ����");
			  }
		 result =1;
		}
		 return result;
	}
	
	@RequestMapping(value="paymentList.do", method=RequestMethod.POST)
	public int paymentList(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, CartVO vo) throws Exception {
		UserVO userVO = (UserVO) session.getAttribute("user");
		String email = userVO.getEmail();
		
		int result = 0;
		int num = 0;
		int price = 0;
		
		if(userVO!=null) {
			vo.setEmail(email);
		
		 for(String i : chArr) {   
			   num = Integer.parseInt(i);
			   System.out.println(num);
			   vo.setNum(num);
			   getCartOne.getCartOne(vo);
				 System.out.println(num+"�� ��ٱ��� ����");
			  }
		 result =1;
		}
		 return result;
	}
	
}
