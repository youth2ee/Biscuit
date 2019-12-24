package com.biscuit.b1.model;

public class OrderDetailVO {

	/*
	create table order_detail (
		    orderDetailNum number not null,
		    orderId VARCHAR2(200) not null,
		    store_num number not null,
		    primary key(orderDetailNum)
		);

		alter table order_detail
		    add constraint detail_orderId_fk FOREIGN key (orderId)
		    REFERENCES myorder(orderId) on delete CASCADE;
	*/
	
	private int orderDetailNum;
	private String orderId;
	private int store_num;
	
	public int getOrderDetailNum() {
		return orderDetailNum;
	}
	public void setOrderDetailNum(int orderDetailNum) {
		this.orderDetailNum = orderDetailNum;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public int getStore_num() {
		return store_num;
	}
	public void setStore_num(int store_num) {
		this.store_num = store_num;
	}
}
