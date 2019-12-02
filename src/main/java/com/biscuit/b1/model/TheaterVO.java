package com.biscuit.b1.model;

public class TheaterVO {
	
	private int theater_num;
	private int cinema_num;
	private String theater_name;
	
	private int movieInfo_num;
	private String timeInfo_date;
	
	
	
	
	
	public String getTimeInfo_date() {
		return timeInfo_date;
	}
	public void setTimeInfo_date(String timeInfo_date) {
		this.timeInfo_date = timeInfo_date;
	}
	public int getMovieInfo_num() {
		return movieInfo_num;
	}
	public void setMovieInfo_num(int movieInfo_num) {
		this.movieInfo_num = movieInfo_num;
	}
	public int getTheater_num() {
		return theater_num;
	}
	public void setTheater_num(int theater_num) {
		this.theater_num = theater_num;
	}
	public int getCinema_num() {
		return cinema_num;
	}
	public void setCinema_num(int cinema_num) {
		this.cinema_num = cinema_num;
	}
	public String getTheater_name() {
		return theater_name;
	}
	public void setTheater_name(String theater_name) {
		this.theater_name = theater_name;
	}
	
	
	
}
