package com.biscuit.b1.service;

import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.biscuit.b1.model.MovieDataVO;

@Service
public class MovieService {
	private static final String HOST = "http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new";
	private MovieDataVO movieDataVO;

	public void MovieApiTest() throws Exception {

		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();

		String serviceKey = "KDJKT151128Z9OMAQ0II";
		String encodeServiceKey = URLEncoder.encode(serviceKey, "UTF-8");
		String decodeServiceKey = URLDecoder.decode(serviceKey, "UTF-8");

		map.add("ServiceKey", encodeServiceKey);
		map.add("releaseDts", "20191001");
		map.add("releaseDte", "20191211");
		map.add("startCount", "10");

		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);
		try {
			// movieDataVO = restTemplate.postForObject(new URI(HOST),
			// request,MovieDataVO.class);
			// System.out.println(movieDataVO.getTitle());
			String str = restTemplate.postForObject(new URI(HOST), request, String.class);
			System.out.println(str);
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonObj = (JSONObject) jsonParser.parse(str);
			JSONArray resultArray = (JSONArray) jsonObj.get("Data");

			JSONObject resultObject = (JSONObject) resultArray.get(0);
			System.out.println(resultObject.get("Result"));
			
			String ss = resultObject.get("Result").toString();
			
			JSONParser jsonParser2 = new JSONParser();
			JSONObject jsonObj2 = (JSONObject) jsonParser2.parse(ss);
			JSONArray resultArray2 = (JSONArray) jsonObj2.get("actor");
			
			for (int i = 0; i < resultArray.size(); i++) {
				System.out.println("======== Title : " + i + " ========");
				JSONObject resultObject2 = (JSONObject) resultArray2.get(i);
				System.out.println(resultObject2.get("actorNm"));
			}
			/*
			 * 데이터 자르기 String str = restTemplate.postForObject(new URI(HOST), request,
			 * String.class); String target = "title"; int target_num = str.indexOf(target);
			 * target = str.substring(target_num,
			 * (str.substring(target_num).indexOf("\",\"titleEng") + target_num)); target =
			 * target.replace("title\":\"", ""); target = target.replace("!HE", ""); target
			 * = target.replace("!HS", ""); target = target.replaceAll(" +", " "); target =
			 * target.trim(); System.out.println(target);
			 * 
			 * String target2 = "poster"; int target_num2 = str.indexOf(target2); target2 =
			 * str.substring(target_num2, (str.substring(target_num2).indexOf("|") +
			 * target_num2)); target2 = target2.replace("posters\":\"", ""); target2 =
			 * target2.replaceAll(" +", " "); target2 = target2.trim();
			 * System.out.println(target2);
			 */

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
	}
}
