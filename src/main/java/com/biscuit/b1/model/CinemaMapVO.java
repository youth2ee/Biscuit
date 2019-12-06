package com.biscuit.b1.model;

public class CinemaMapVO {
	private int total_count;
	private int pageable_count;
	private boolean is_end;
	private String address_name;
	private String x;
	private String y;
	private AddressVO address;
	private Road_addressVO road_addess;

	public int getTotal_count() {
		return total_count;
	}

	public void setTotal_count(int total_count) {
		this.total_count = total_count;
	}

	public int getPageable_count() {
		return pageable_count;
	}

	public void setPageable_count(int pageable_count) {
		this.pageable_count = pageable_count;
	}

	public boolean isIs_end() {
		return is_end;
	}

	public void setIs_end(boolean is_end) {
		this.is_end = is_end;
	}

	public String getAddress_name() {
		return address_name;
	}

	public void setAddress_name(String address_name) {
		this.address_name = address_name;
	}

	public String getX() {
		return x;
	}

	public void setX(String x) {
		this.x = x;
	}

	public String getY() {
		return y;
	}

	public void setY(String y) {
		this.y = y;
	}

	public AddressVO getAddress() {
		return address;
	}

	public void setAddress(AddressVO address) {
		this.address = address;
	}

	public Road_addressVO getRoad_addess() {
		return road_addess;
	}

	public void setRoad_addess(Road_addressVO road_addess) {
		this.road_addess = road_addess;
	}

}
