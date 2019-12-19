package com.biscuit.b1.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.CinemaVO;
import com.biscuit.b1.model.MovieDataVO;
import com.biscuit.b1.model.Movie_TicketingVO;
import com.biscuit.b1.model.SeatVO;

@Repository
public class SeatDAO {
	@Inject
	private SqlSession sqlsession;
	private static final String NAMESPACE = "seatMapper.";

	public CinemaVO selectCinema(ChoiceVO choiceVO) throws Exception {
		return sqlsession.selectOne(NAMESPACE + "getTheaterNum", choiceVO);
	}

	public int seatBooking(SeatVO seatVO) throws Exception {
		System.out.println(seatVO);
		return sqlsession.insert(NAMESPACE + "seatBooking", seatVO);
	}

	public List<SeatVO> bookCheck(ChoiceVO choiceVO) throws Exception {
		return sqlsession.selectList(NAMESPACE + "bookCheck", choiceVO);
	}

	public int insertTicket(Movie_TicketingVO movie_TicketingVO) {
		return sqlsession.insert(NAMESPACE + "insertTicket", movie_TicketingVO);
	}

	public MovieDataVO getPoster(ChoiceVO choiceVO) {
		return sqlsession.selectOne(NAMESPACE + "getPoster", choiceVO);
	}
	public int ratingUpdate(ChoiceVO choiceVO) {
		return sqlsession.update(NAMESPACE+"ratingUpdate",choiceVO);
	}
	public String getGrade(ChoiceVO choiceVO) {
		return sqlsession.selectOne(NAMESPACE+"getGrade",choiceVO);
	}

}
