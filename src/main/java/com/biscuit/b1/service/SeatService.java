package com.biscuit.b1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.biscuit.b1.dao.SeatDAO;
import com.biscuit.b1.model.ChoiceVO;
import com.biscuit.b1.model.MovieDataVO;
import com.biscuit.b1.model.Movie_TicketingVO;
import com.biscuit.b1.model.SeatVO;

@Service
public class SeatService {
	@Inject
	private SeatDAO seatDAO;

	public int seatBooking(SeatVO seatVO) throws Exception{
		return seatDAO.seatBooking(seatVO);
	}
	public List<SeatVO> bookCheck(ChoiceVO choiceVO) throws Exception{
		return seatDAO.bookCheck(choiceVO);
	}
	public int insertTicket(Movie_TicketingVO movie_TicketingVO) throws Exception{
		return seatDAO.insertTicket(movie_TicketingVO);
	}
	public MovieDataVO getPoster(ChoiceVO choiceVO) throws Exception{
		return seatDAO.getPoster(choiceVO);
	}
	public int ratingUpdate(ChoiceVO choiceVO) throws Exception{
		return seatDAO.ratingUpdate(choiceVO);
	}
	public String getGrade(ChoiceVO choiceVO) throws Exception{
		return seatDAO.getGrade(choiceVO);
	}
}
