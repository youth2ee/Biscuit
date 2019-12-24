package com.biscuit.b1.service;

import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

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

import com.biscuit.b1.dao.MovieDAO;
import com.biscuit.b1.model.MemberVO;
import com.biscuit.b1.model.MovieDataVO;
import com.biscuit.b1.model.MovieGradeVO;
import com.biscuit.b1.model.MovieInfoVO;

@Service
public class MovieService {
	private static final String HOST = "http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new";
	@Inject
	private MovieDAO movieDAO;
	
	//home
	public List<MovieInfoVO> homeposter() {
		return movieDAO.homeposter();
	}
	
	
	
	//
	public List<MovieDataVO> movieListView() {
		return movieDAO.movieListView();
	}

	public String lastRelease() {
		return movieDAO.lastRelease();
	}

	public int movieManagement() throws Exception {
		RestTemplate restTemplate = new RestTemplate();
		HttpHeaders headers = new HttpHeaders();
		SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd HH:mm:ss");
		Date today = new Date();
		String time = format.format(today);
		String year = time.substring(0, 4);
		String month = time.substring(4, 6);
		String date = time.substring(6, 8);
		String lastRelease = movieDAO.lastRelease();
		SimpleDateFormat format2 = new SimpleDateFormat("yyyy-MM-dd");
		Calendar c = Calendar.getInstance();
		c.setTime(format2.parse(lastRelease));
		c.add(Calendar.DATE, 1);
		lastRelease = format2.format(c.getTime());
		String year2 = lastRelease.substring(0, 4);
		String month2 = lastRelease.substring(5, 7);
		String date2 = lastRelease.substring(8, 10);
		lastRelease = year2 + month2 + date2;
		time = year + month + date;

		int count = 0;
		MultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>();

		String serviceKey = "KDJKT151128Z9OMAQ0II";

		map.add("ServiceKey", serviceKey);
		map.add("releaseDts", lastRelease); // 마지막으로 추가한 날의 다음날
		map.add("releaseDte", time); // 기간 검색 범위 마지막날 -> 오늘
		map.add("listCount", "1000");

		HttpEntity<MultiValueMap<String, String>> request = new HttpEntity<MultiValueMap<String, String>>(map, headers);

		try {
			String str = restTemplate.postForObject(new URI(HOST), request, String.class);
			JSONParser parser = new JSONParser();
			JSONObject obj = (JSONObject) parser.parse(str);
			JSONArray data = (JSONArray) obj.get("Data");

			for (int j = 0; j < data.size(); j++) {
				JSONObject resultObject = (JSONObject) data.get(j);
				JSONArray result = (JSONArray) resultObject.get("Result");
				for (int i = 0; i < result.size(); i++) {
					MovieInfoVO movieInfoVO = new MovieInfoVO();
					MovieDataVO movieDataVO = new MovieDataVO();
					JSONObject resultObject2 = (JSONObject) result.get(i);
					JSONArray rating = (JSONArray) resultObject2.get("rating");
					String ratingGrade = null; // 관람등급
					String releaseDate = null; // 개봉일
					String title = resultObject2.get("title").toString().trim(); // 제목
					String posters = resultObject2.get("posters").toString().trim(); // 포스터 이미지 주소
					int runtime = Integer.parseInt(resultObject2.get("runtime").toString().trim()); // 상영 시간
					String genre = resultObject2.get("genre").toString().trim(); // 장르
					String nation = resultObject2.get("nation").toString().trim(); // 국가
					String plot = resultObject2.get("plot").toString().trim(); // 줄거리
					String prodYear = resultObject2.get("prodYear").toString().trim(); // 제작년도
					for (int x = 0; x < rating.size(); x++) {
						JSONObject ratingObject = (JSONObject) rating.get(x);
						ratingGrade = ratingObject.get("ratingGrade").toString().trim();
						releaseDate = ratingObject.get("releaseDate").toString().trim();
					}

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
					if (ratingGrade.equals("18세관람가(청소년관람불가)")) {
						ratingGrade = "청소년 관람불가";
					} else if (ratingGrade.equals("전체관람가")) {
						ratingGrade = "전체 관람가";
					} else if (ratingGrade.equals("15세관람가")) {
						ratingGrade = "15세 관람가";
					} else if (ratingGrade.equals("12세관람가")) {
						ratingGrade = "12세 관람가";
					}

					if (!posters.equals("") && !ratingGrade.equals("") && !releaseDate.equals("0")) { // 포스터, 관람등급이
																										// null이 아니면
						if (!releaseDate.substring(6, 8).equals("00")) { // 날짜입력이 이상하게 된 것 제외시킴
							if (i % 50 == 0) {
								Thread.sleep(1000);
							}
							movieDataVO.setTitle(title);
							movieDataVO.setRuntime(runtime);
							movieDataVO.setPoster(posters);
							movieDataVO.setNation(nation);
							movieDataVO.setGenre(genre);
							movieDataVO.setRatingGrade(ratingGrade);
							movieDataVO.setProdYear(prodYear);
							movieDataVO.setReleaseDate(releaseDate);

							int check = movieDAO.movieInsert(movieDataVO);

							movieInfoVO.setMovieInfo_title(title);
							movieInfoVO.setMovieInfo_genre(genre);
							movieInfoVO.setMovieInfo_date(releaseDate);
							movieInfoVO.setMovieInfo_nation(nation);
							movieInfoVO.setMovieInfo_grade(ratingGrade);
							movieInfoVO.setMovieInfo_time(runtime);
							movieInfoVO.setMovieInfo_poster(posters);
							movieInfoVO.setMovieInfo_year(prodYear);
							movieInfoVO.setMovieInfo_plot(plot);

							if (check == 1) {
								movieDAO.movieInfoInsert(movieInfoVO);
								count++;
							}

						}
					}

				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		System.out.println(count);
		return count;
	}

	// movielist
	public List<MovieGradeVO> movieGradeTotal(MemberVO memberVO) {
		return movieDAO.movieGradeTotal(memberVO);
	}

	public MovieGradeVO movieGradeSelect(MovieGradeVO movieGradeVO) {
		return movieDAO.movieGradeSelect(movieGradeVO);
	}

	public int movieGradeInsert(MovieGradeVO movieGradeVO) {
		return movieDAO.movieGradeInsert(movieGradeVO);
	}

	public int movieHeartUpdate(MovieGradeVO movieGradeVO) {
		return movieDAO.movieHeartUpdate(movieGradeVO);
	}

	public int movieStarUpdate(MovieGradeVO movieGradeVO) {
		return movieDAO.movieStarUpdate(movieGradeVO);
	}
	
	public int movieInfoStarUpdate(MovieGradeVO movieGradeVO) {
		return movieDAO.movieInfoStarUpdate(movieGradeVO);
	}
	
	public List<MovieGradeVO> searchForHeart(String id) {
		return movieDAO.searchForHeart(id);
	}
	
	public List<MovieGradeVO> myGrade(String id){
		return movieDAO.myGrade(id);
	}
	

}
