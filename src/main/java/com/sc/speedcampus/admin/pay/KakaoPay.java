package com.sc.speedcampus.admin.pay;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

@Service
public class KakaoPay {

	 private static final String HOST = "https://kapi.kakao.com";
	    
	    private KakaoPayReadyVO kakaoPayReadyVO;
	    private KakaoPayApprovalVO kakaoPayApprovalVO;
	    
	    
	    public String kakaoPayReady(KakaoPayReadyVO vo) {
	    	System.out.println(vo);
	        RestTemplate restTemplate = new RestTemplate();
	        System.out.println(vo.getTotal_amount());
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "b5e7777bbf2fcbee4d4c3f7a222bec04");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	        
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("partner_order_id", vo.getPartner_order_id());
	        params.add("partner_user_id", vo.getPartner_user_id());
	        params.add("item_name", "SpeedCampus 강좌");
	        params.add("quantity", "1");
	        
	        //1번
	        //params.add("total_amount", "2100");
	        //2번
	        params.add("total_amount", vo.getTotal_amount());
	        params.add("tax_free_amount", "100");
	        params.add("approval_url", "http://localhost:8080/speedcampus/paySuccess.do");
	        params.add("cancel_url", "http://localhost:8080/speedcampus/payFail.do");
	        params.add("fail_url", "http://localhost:8080/speedcampus/payFail.do");
	 
	         HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	 
	        try {
	            kakaoPayReadyVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), body, KakaoPayReadyVO.class);
	            return kakaoPayReadyVO.getNext_redirect_pc_url();
	 
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return "userHome.do";
	        
	    }
	    
	    public KakaoPayApprovalVO kakaoPayInfo(String pg_token, KakaoPayReadyVO vo ) {
	  
	    	 System.out.println("실행여부");
	        //log.info("KakaoPayInfoVO............................................");
	        //log.info("-----------------------------");
	        
	        RestTemplate restTemplate = new RestTemplate();
	 
	        // 서버로 요청할 Header
	        HttpHeaders headers = new HttpHeaders();
	        headers.add("Authorization", "KakaoAK " + "b5e7777bbf2fcbee4d4c3f7a222bec04");
	        headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
	        headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	 
	        // 서버로 요청할 Body
	        MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
	        params.add("cid", "TC0ONETIME");
	        params.add("tid", kakaoPayReadyVO.getTid());  				// 결제고유번호(카카오페이)
	        params.add("partner_order_id", vo.getPartner_order_id());	// 결제 번호(테이블 내)
	        params.add("partner_user_id", vo.getPartner_user_id());		// 결제 아이디
	        params.add("pg_token", pg_token);
	        params.add("total_amount", vo.getTotal_amount());
	        
	        HttpEntity<MultiValueMap<String, String>> body = new HttpEntity<MultiValueMap<String, String>>(params, headers);
	        
	        try {
	            kakaoPayApprovalVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), body, KakaoPayApprovalVO.class);
	            //log.info("" + kakaoPayApprovalVO);
	          
	            return kakaoPayApprovalVO;
	        
	        } catch (RestClientException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (URISyntaxException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return null;
	    }
}
