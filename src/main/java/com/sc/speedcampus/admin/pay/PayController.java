package com.sc.speedcampus.admin.pay;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sc.speedcampus.admin.course.service.GetCourseService;
import com.sc.speedcampus.user.member.vo.UserVO;
import com.sc.speedcampus.user.mycourse.service.GetMyCourseService;
import com.sc.speedcampus.user.mycourse.vo.MyCourseVO;

@CrossOrigin
@Controller
public class PayController {


    @Autowired
    private KakaoPay kakaopay;
    @Autowired
    private GetMyCourseService courseService;
    @Autowired
    private GetCourseService getCourseService;
    
    KakaoPayReadyVO vo = new KakaoPayReadyVO();
    
    @GetMapping("kakaoPay.do")
    public void kakaoPayGet() {
        
    }
    

    @PostMapping("kakaoPay.do")
    public String kakaoPay(@RequestParam("total_amount") String total_amount, HttpServletRequest request, MyCourseVO mcVO,@RequestParam(value = "chbox[]") List<String> courseNameList) {
       // log.info("kakaoPay post............................................");
    	//@RequestParam("total_amount") String total_amount, 
    	System.out.println("chArr: " + courseNameList);
    	vo.setPartner_order_id("1");
        vo.setTotal_amount(total_amount);
        HttpSession session = request.getSession(false);
        session.getAttribute("user") ;
		UserVO userVO = (UserVO)session.getAttribute("user");

        vo.setPartner_user_id(userVO.getEmail());
        vo.setPartner_order_id("1");
        
        // 임시 등록
        
        vo.setcourseNameList(courseNameList);
        
        for(int i=0;i<courseNameList.size();i++) {
        	
        	String courseName = courseNameList.get(i);
        	int courseNum = getCourseService.getCourseNum(courseName);
        	
        	mcVO.setVnum(courseNum);
        	mcVO.setEmail(userVO.getEmail());
        	
        	// myCourse에 내 강좌 등록
        	courseService.insertMyCourse(mcVO);
        }
        
        
        System.out.println(vo);
        
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
	        
	        model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token, vo));
	        return "my/paySuccess";
	    }
}
