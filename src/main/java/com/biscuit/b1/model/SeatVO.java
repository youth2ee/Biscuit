package com.biscuit.b1.model;

public class SeatVO {
	private int seat_num;
	private String movieInfo_name;
	private int cinema_num;
	private String timeInfo_start;
	private String timeInfo_date;
	private String seat_name;
	private int theater_num;
	private int movieInfo_num;

	
	
	
	public String getTimeInfo_date() {
		return timeInfo_date;
	}

	public void setTimeInfo_date(String timeInfo_date) {
		this.timeInfo_date = timeInfo_date;
	}

	public int getTheater_num() {
		return theater_num;
	}

	public void setTheater_num(int theater_num) {
		this.theater_num = theater_num;
	}

	public int getMovieInfo_num() {
		return movieInfo_num;
	}

	public void setMovieInfo_num(int movieInfo_num) {
		this.movieInfo_num = movieInfo_num;
	}

	public String getMovieInfo_name() {
		return movieInfo_name;
	}

	public void setMovieInfo_name(String movieInfo_name) {
		this.movieInfo_name = movieInfo_name;
	}

	public String getTimeInfo_start() {
		return timeInfo_start;
	}

	public void setTimeInfo_start(String timeInfo_start) {
		this.timeInfo_start = timeInfo_start;
	}

	public int getSeat_num() {
		return seat_num;
	}

	public void setSeat_num(int seat_num) {
		this.seat_num = seat_num;
	}

	public int getCinema_num() {
		return cinema_num;
	}

	public void setCinema_num(int cinema_num) {
		this.cinema_num = cinema_num;
	}

	public String getSeat_name() {
		return seat_name;
	}

	public void setSeat_name(String seat_name) {
		this.seat_name = seat_name;
	}

}
