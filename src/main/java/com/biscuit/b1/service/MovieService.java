package com.biscuit.b1.service;

import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.*;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

@Service
public class MovieService {
	private static final String HOST = "http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new";

	public void MovieApiTest() throws Exception {

		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		SimpleDateFormat format1 = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();

		String serviceKey = "KDJKT151128Z9OMAQ0II";

		map.add("ServiceKey", serviceKey);
		map.add("releaseDts", "20191212");
		map.add("releaseDte", "20191212");
		map.add("listCount", "1000");

		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);
		try {
			// movieDataVO = restTemplate.postForObject(new URI(HOST),
			// request,MovieDataVO.class);
			// System.out.println(movieDataVO.getTitle());
			String str = restTemplate.postForObject(new URI(HOST), request, String.class);
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(str);
			JSONArray data = (JSONArray) obj.get("Data");

			for (int j = 0; j < data.size(); j++) {
				JSONObject resultObject = (JSONObject) data.get(j);
				JSONArray result = (JSONArray) resultObject.get("Result");
				for (int i = 0; i < result.size(); i++) {
					JSONObject resultObject2 = (JSONObject) result.get(i);
					JSONArray rating = (JSONArray) resultObject2.get("rating");
					String ratingGrade = null; // 관람등급
					String releaseDate = null; // 개봉일
					String title = resultObject2.get("title").toString().trim(); // 제목
					String posters = resultObject2.get("posters").toString().trim(); // 포스터 이미지 주소
					String runtime = resultObject2.get("runtime").toString().trim(); // 상영 시간
					String genre = resultObject2.get("genre").toString().trim(); // 장르
					String nation = resultObject2.get("nation").toString().trim(); // 국가
					String prodYear = resultObject2.get("prodYear").toString().trim(); // 제작년도
					for (int x = 0; x < rating.size(); x++) {
						JSONObject ratingObject = (JSONObject) rating.get(x);
						ratingGrade = ratingObject.get("ratingGrade").toString().trim();
						releaseDate = ratingObject.get("releaseDate").toString().trim();
					}
					/*
					 * if (!posters.equals(null)) { int idx = posters.indexOf("|"); posters =
					 * posters.substring(0, idx); }
					 */

					if (ratingGrade.contains("|")) { // ratingGrade에 15세관람가||15세관람가 이렇게 적혀있는 경우가 있음
						int idx = ratingGrade.indexOf("|");
						ratingGrade = ratingGrade.substring(0, idx);
					}
					if (releaseDate.contains("|")) { // 이하동문
						int idx = releaseDate.indexOf("|");
						releaseDate = releaseDate.substring(0, idx);
					}
					if (posters.contains("|")) { // poster가 여러개인 경우 |로 분리 해놓음 그거 잘라서 한개만 가져오기
						int idx = posters.indexOf("|");
						posters = posters.substring(0, idx);
					}
					System.out.println("몇 개? : " + i);
					System.out.println("제목 : " + title);
					System.out.println("러닝타임 : " + runtime + "분");
					System.out.println("포스터: " + posters);
					System.out.println("국가 : " + nation);
					System.out.println("장르 : " + genre);
					System.out.println("등급 : " + ratingGrade);
					System.out.println("제작년도 : " + prodYear);
					System.out.println("개봉일  : " + releaseDate);
					System.out.println("================================================================");

				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	}
}
