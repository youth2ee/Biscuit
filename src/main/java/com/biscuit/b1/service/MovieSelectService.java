package com.biscuit.b1.service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.MovieSelectDAO;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieInfoVO;
import com.biscuit.b1.model.TheaterVO;
import com.biscuit.b1.model.TimeInfoVO;

@Service
public class MovieSelectService {

	@Inject
	private MovieSelectDAO movieSelectDAO;
	
	public List<MovieInfoVO> movieTitleSelect() {
		return movieSelectDAO.movieTitleSelect();
	}
	
	public List<CinemaVO> movieLocSelect() {
		return movieSelectDAO.movieLocSelect();
	}
	
	public List<CinemaVO> movieCinemaSelect(ChoiceVO choiceVO) {
		return movieSelectDAO.movieCinemaSelect(choiceVO);
	}
	
	//영화에 따른 관선택
	public List<ChoiceVO> movieChoice(ChoiceVO choiceVO) {
		return movieSelectDAO.movieChoice(choiceVO);
	}
	
	//theater num
	public ChoiceVO theaterSelect(ChoiceVO choiceVO) {
		return movieSelectDAO.theaterSelect(choiceVO);
	}
	
	//날짜
	public List<TimeInfoVO> movieDateSelect(ChoiceVO choiceVO) {
		return movieSelectDAO.movieDateSelect(choiceVO);
	}
	
	public List<ChoiceVO> movieTimeSelect(ChoiceVO choiceVO) {
		return movieSelectDAO.movieTimeSelect(choiceVO);
	}

	//seat
	public List<ChoiceVO> seatCount(ChoiceVO choiceVO) {
		return movieSelectDAO.seatCount(choiceVO);
	}
	
	//movieList 페이지
	public List<MovieInfoVO> movieList() {
		return movieSelectDAO.movieList();
	}
	
	
	//날짜 -> 요일
			public String getDateDay(String date) throws Exception {
			    String day = "" ;
			     
			    date = "19/12/23";
			    
			    SimpleDateFormat dateFormat = new SimpleDateFormat("yy/MM/dd") ;
			    Date nDate = dateFormat.parse(date) ;
		    
			    System.out.println(date);
			     
			    Calendar cal = Calendar.getInstance() ;
			    cal.setTime(nDate);
			     
			    int dayNum = cal.get(Calendar.DAY_OF_WEEK) ;
			     System.out.println(dayNum);
			     
			     
			    switch(dayNum){
			        case 1:
			            day = "일";
			            break;
			        case 2:
			            day = "월";
			            break;
			        case 3:
			            day = "화";
			            break;
			        case 4:
			            day = "수";
			            break;
			        case 5:
			            day = "목";
			            break;
			        case 6:
			            day = "금";
			            break;
			        case 7:
			            day = "토";
			            break;
			             
			    }
			     
			     
			     
			    return day ;
			}

	
}