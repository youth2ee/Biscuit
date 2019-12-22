package com.biscuit.b1.model;

import java.util.Date;

public class TimeInfoVO {

	private int timeInfo_num;
	private int theater_num;
	private int movieInfo_num;
	private String timeInfo_date;
	private String timeInfo_start;
	private String timeInfo_end;
	
	private int cinema_num;
	
	private String year;
	private String month;
	private String day;
	
	private String week;
	
	

	public String getWeek() {
		return week;
	}
	public void setWeek(String week) {
		this.week = week;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public int getCinema_num() {
		return cinema_num;
	}
	public void setCinema_num(int cinema_num) {
		this.cinema_num = cinema_num;
	}
	public int getTimeInfo_num() {
		return timeInfo_num;
	}
	public void setTimeInfo_num(int timeInfo_num) {
		this.timeInfo_num = timeInfo_num;
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
	public String getTimeInfo_date() {
		return timeInfo_date;
	}
	public void setTimeInfo_date(String timeInfo_date) {
		this.timeInfo_date = timeInfo_date;
	}
	public String getTimeInfo_start() {
		return timeInfo_start;
	}
	public void setTimeInfo_start(String timeInfo_start) {
		this.timeInfo_start = timeInfo_start;
	}
	public String getTimeInfo_end() {
		return timeInfo_end;
	}
	public void setTimeInfo_end(String timeInfo_end) {
		this.timeInfo_end = timeInfo_end;
	}
	
	
	
}
