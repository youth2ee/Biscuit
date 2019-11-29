package com.biscuit.b1.service;

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

import com.biscuit.b1.model.KakaoPayVO;
import com.biscuit.b1.model.PayInfoVO;

@Service
public class PayService {

	private static final String HOST = "https://kapi.kakao.com";
	private String partner_order_id;
	private String partner_user_id;
	private KakaoPayVO kakaoPayVO;
	private PayInfoVO payInfoVO;

	public PayInfoVO KakaoPayApprove(String pg_token) {

		RestTemplate restTemplate = new RestTemplate();

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK cd0f72b5c9fb64cd830bdaaab8fabc83");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();
		map.add("cid", "TC0ONETIME");
		map.add("tid", kakaoPayVO.getTid());
		map.add("partner_order_id", partner_order_id);
		map.add("partner_user_id", partner_user_id);
		map.add("pg_token", pg_token);

		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);
		try {
			payInfoVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/approve"), request, PayInfoVO.class);
			return payInfoVO;

		} catch (RestClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	public String KakaoPayReady() {

		RestTemplate restTemplate = new RestTemplate();

		partner_order_id = "1234";
		partner_user_id = "test";

		HttpHeaders headers = new HttpHeaders();
		headers.add("Authorization", "KakaoAK cd0f72b5c9fb64cd830bdaaab8fabc83");
		headers.add("Accept", MediaType.APPLICATION_JSON_UTF8_VALUE);
		headers.add("Content-Type", MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");

		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();

		map.add("cid", "TC0ONETIME");
		map.add("partner_order_id", partner_order_id);
		map.add("partner_user_id", partner_user_id);
		map.add("item_name", "테스트"); // 상품명
		map.add("quantity", "1"); // 수량
		map.add("total_amount", "300"); // 금액
		map.add("tax_free_amount", "0"); // 세금
		map.add("approval_url", "http://localhost/b1/pay/kakaoPaySuccess");
		map.add("cancel_url", "http://localhost/b1/pay/kakaoPayCancel");
		map.add("fail_url", "http://localhost/b1/pay/kakaoPayFail");

		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);
		try {
			kakaoPayVO = restTemplate.postForObject(new URI(HOST + "/v1/payment/ready"), request, KakaoPayVO.class);

			return kakaoPayVO.getNext_redirect_pc_url();

		} catch (RestClientException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/pay";

	}

	/*
	 * URL url = null; URLConnection connection = null; StringBuilder responseBody =
	 * new StringBuilder(); try { url = new
	 * URL("https://kapi.kakao.com/v1/payment/ready"); connection =
	 * url.openConnection(); connection.addRequestProperty("Authorization",
	 * "KakaoAK cd0f72b5c9fb64cd830bdaaab8fabc83");
	 * connection.addRequestProperty("Content-type",
	 * "application/x-www-form-urlencoded;charset=utf-8");
	 * connection.setDoOutput(true); connection.setDoInput(true);
	 * org.json.simple.JSONObject jsonBody = new org.json.simple.JSONObject();
	 * jsonBody.put("cid", "TC0ONETIME"); jsonBody.put("partner_order_id",
	 * "partner_order_id"); jsonBody.put("partner_user_id", "partner_user_id");
	 * jsonBody.put("item_name", "초코파이"); jsonBody.put("quantity", 1);
	 * jsonBody.put("total_amount", 2200); jsonBody.put("vat_amount", 200);
	 * jsonBody.put("tax_free_amount", 0); jsonBody.put("approval_url",
	 * "https://developers.kakao.com/success"); jsonBody.put("cancel_url",
	 * "https://developers.kakao.com/fail"); jsonBody.put("fail_url",
	 * "https://developers.kakao.com/cancel");
	 * System.out.println(jsonBody.get("cid")); BufferedOutputStream bos = new
	 * BufferedOutputStream(connection.getOutputStream());
	 * 
	 * bos.write(jsonBody.toJSONString().getBytes(StandardCharsets.UTF_8));
	 * bos.flush(); bos.close();
	 * 
	 * BufferedReader br = new BufferedReader( new
	 * InputStreamReader(connection.getInputStream(), StandardCharsets.UTF_8));
	 * String line = null; while ((line = br.readLine()) != null) {
	 * responseBody.append(line); } br.close(); } catch (Exception e) {
	 * responseBody.append(e); } System.out.println(responseBody.toString());
	 */

	/*
	 * public String kakaoPayTest() { System.out.println("시작은 되나"); RestTemplate
	 * restTemplate = new RestTemplate();
	 * 
	 * HttpHeaders headers = new HttpHeaders(); headers.add("Authorization",
	 * "KakaoAK cd0f72b5c9fb64cd830bdaaab8fabc83"); headers.add("Accept",
	 * MediaType.APPLICATION_JSON_UTF8_VALUE); headers.add("Content-Type",
	 * MediaType.APPLICATION_FORM_URLENCODED_VALUE + ";charset=UTF-8");
	 * 
	 * MultiValueMap<String, String> map = new LinkedMultiValueMap<String,
	 * String>(); map.add("cid", "TC0ONETIME"); map.add("partner_order_id", "0710");
	 * map.add("partner_user_id", "test"); map.add("item_name", "테스트");
	 * map.add("quantity", "1"); map.add("total_amount", "1900");
	 * map.add("tax_free_amount", "100"); map.add("approval_url",
	 * "http://localhost/b1/pay/kakaoPaySuccess"); map.add("cancel_url",
	 * "http://localhost/b1/pay/kakaoPaySuccess"); map.add("fail_url",
	 * "http://localhost/b1/pay/kakaoPaySuccess"); System.out.println("여기까지 나오나");
	 * // 안나옴 HttpEntity<MultiValueMap<String, String>> body = new
	 * HttpEntity<MultiValueMap<String, String>>(map, headers);
	 * 
	 * try { kakaoPayVO = restTemplate.postForObject(new URI(HOST +
	 * "/v1/payment/ready"), body, KakaoPayVO.class);
	 * 
	 * System.out.println("테스트 : " + kakaoPayVO);
	 * 
	 * //return kakaoPayVO.getNext_redirect_pc_url();
	 * 
	 * } catch (RestClientException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } catch (URISyntaxException e) { // TODO Auto-generated
	 * catch block e.printStackTrace(); }
	 * 
	 * return "/pay";
	 * 
	 * }
	 */
}
