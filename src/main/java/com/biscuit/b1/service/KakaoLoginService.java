package com.biscuit.b1.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
public class KakaoLoginService {
	
	private static final String HOST = "kauth.kakao.com";
	
	
	public void kakaoUserInfo() {
		
	}
	
	/*
	 * public void kakaoLoginGetCode() { RestTemplate restTemplate = new
	 * RestTemplate(); MultiValueMap<String, String> map = new
	 * LinkedMultiValueMap<String, String>();
	 * 
	 * map.add("client_id", "26613722916b20e426b8ae7a53bdc898");
	 * map.add("redirect_uri", "http://localhost.com/kakaoLogin");
	 * map.add("response_type", "http://localhost.com/kakaoLogin"); }
	 * 
	 * 
	 * public void kakaoLoginGetToken() { RestTemplate restTemplate = new
	 * RestTemplate(); MultiValueMap<String, String> map = new
	 * LinkedMultiValueMap<String, String>();
	 * 
	 * map.add("grant_type", "authorization_cod"); map.add("client_id",
	 * "26613722916b20e426b8ae7a53bdc898"); map.add("redirect_uri",
	 * "http://localhost.com/kakaoLogin"); //map.add("code", );
	 * 
	 * }
	 */
}
