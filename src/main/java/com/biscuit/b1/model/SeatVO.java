package com.biscuit.b1.model;

public class SeatVO {
	private int seat_num;
	private int theater_num;
	private int cinema_num;
	private int seat_check;
	private String seat_name;

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

	public int getSeat_check() {
		return seat_check;
	}

	public void setSeat_check(int seat_check) {
		this.seat_check = seat_check;
	}

	public String getSeat_name() {
		return seat_name;
	}

	public void setSeat_name(String seat_name) {
		this.seat_name = seat_name;
	}

}
