package com.biscuit.b1.service;

import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;

import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestClientException;
import org.springframework.web.client.RestTemplate;

import com.biscuit.b1.model.CinemaMapVO;
import com.biscuit.b1.model.KakaoPayVO;

@Service
public class CinemaMapService {
	private static final String HOST = "https://dapi.kakao.com";
	private CinemaMapVO cinemaMapVO;
	public String cinemaMapTest() throws UnsupportedEncodingException {
		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK 347369e2dc4b384e957f716bb12eef19");
		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
		String query = URLEncoder.encode("전북 삼성동 100", "UTF-8");
		System.out.println(query);
		map.add("query", query);
		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);
		try {
			cinemaMapVO = restTemplate.postForObject(new URI(HOST + "/v2/local/search/address.json"), request, CinemaMapVO.class);
			System.out.println(cinemaMapVO);
			System.out.println(cinemaMapVO.getAddress_name());
			System.out.println(cinemaMapVO.getAddress());
			System.out.println(cinemaMapVO.getX());
			System.out.println(cinemaMapVO.getY());
			System.out.println(cinemaMapVO.isIs_end());
			

		} catch (RestClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/pay";

	}

}
