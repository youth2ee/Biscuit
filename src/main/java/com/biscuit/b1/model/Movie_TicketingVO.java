package com.biscuit.b1.model;

public class Movie_TicketingVO {

	private String movie_t_num;
	private String id;
	private int movieInfo_num;
	private int cinema_num;
	private int theater_num;
	private String seat_name;

	public String getMovie_t_num() {
		return movie_t_num;
	}

	public void setMovie_t_num(String movie_t_num) {
		this.movie_t_num = movie_t_num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getMovieInfo_num() {
		return movieInfo_num;
	}

	public void setMovieInfo_num(int i) {
		this.movieInfo_num = i;
	}

	public int getCinema_num() {
		return cinema_num;
	}

	public void setCinema_num(int cinema_num) {
		this.cinema_num = cinema_num;
	}

	public int getTheater_num() {
		return theater_num;
	}

	public void setTheater_num(int theater_num) {
		this.theater_num = theater_num;
	}

	public String getSeat_name() {
		return seat_name;
	}

	public void setSeat_name(String seat_name) {
		this.seat_name = seat_name;
	}


}
