package com.biscuit.b1.service;

import java.net.URI;
import java.net.URISyntaxException;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.biscuit.b1.model.KakaoPayVO;

@Service
public class PayService {
	/*
	 * private static final String HOST = "kapi.kakao.com"; private KakaoPayVO
	 * kakaoPayVO;
	 * 
	 * public String kakaoPayTest() { KakaoPayVO kakaoPayVO = new KakaoPayVO();
	 * RestTemplate restTemplate = new RestTemplate(); HttpHeaders headers = new
	 * HttpHeaders();
	 * headers.add("Authorization","KakaoAK "+"cd0f72b5c9fb64cd830bdaaab8fabc83");
	 * headers.add("Content-type","application/x-www-form-urlencoded;charset=utf-8"
	 * );
	 * 
	 * MultiValueMap<String, String> map = new LinkedMultiValueMap<String,
	 * String>(); map.add("cid", "TC0ONETIME"); map.add("partner_order_id", "0710");
	 * map.add("partner_user_id", "test"); map.add("item_name" , "테스트");
	 * map.add("quantity", "1"); map.add("total_amount", "1");
	 * map.add("tax_free_amount","1");
	 * map.add("approval_url","http,//localhost/b1/seat/seatTest");
	 * map.add("cancel_url","http,//localhost/b1/seat/seatTest");
	 * map.add("fail_url","http,//localhost/b1/seat/seatTest");
	 * 
	 * HttpEntity<MultiValueMap<String, String>> body = new
	 * HttpEntity<MultiValueMap<String, String>>(map, headers);
	 * 
	 * try { kakaoPayVO = restTemplate.postForObject(new
	 * URI(HOST+"/v1/payment/ready"), body, KakaoPayVO.class);
	 * System.out.println(kakaoPayVO); return kakaoPayVO.getNext_redirect_pc_url();
	 * } catch (RestClientException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } catch (URISyntaxException e) { // TODO Auto-generated
	 * catch block e.printStackTrace(); }
	 * 
	 * return "/pay"; }
	 */
}
