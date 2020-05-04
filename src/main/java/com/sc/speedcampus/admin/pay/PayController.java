package com.sc.speedcampus.admin.pay;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PayController {


   @Autowired
    private KakaoPay kakaopay;
    
    @GetMapping("kakaoPay.do")
    public void kakaoPayGet() {
        
    }
    
    @PostMapping("kakaoPay.do")
    public String kakaoPay(@RequestParam("total_amount") String total_amount) {
       // log.info("kakaoPay post............................................");
    	KakaoPayReadyVO vo = new KakaoPayReadyVO();
        vo.setTotal_amount(total_amount);
        return "redirect:" + kakaopay.kakaoPayReady(vo);
 
    }
    

	
    
	@RequestMapping("payFail.do")
	public String payFail() {
		
		return "my/payFail";
	}
	
	
	 @GetMapping("paySuccess.do")
	    public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
	        //log.info("kakaoPaySuccess get............................................");
	        //log.info("kakaoPaySuccess pg_token : " + pg_token);
	        
	        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
	        return "my/paySuccess";
	    }
}
