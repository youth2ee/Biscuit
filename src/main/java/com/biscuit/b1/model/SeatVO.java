package com.biscuit.b1.model;

public class SeatVO {
	private int seat_num;
	private int theater_num;
	private int cinema_num;
	private String timeInfo_start;
	private String seat_name;
	

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

	public String getSeat_name() {
		return seat_name;
	}

	public void setSeat_name(String seat_name) {
		this.seat_name = seat_name;
	}

}
