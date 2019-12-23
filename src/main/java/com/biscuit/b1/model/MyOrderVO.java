package com.biscuit.b1.model;

import java.util.Date;

public class MyOrderVO {

	/*
	create table myorder (
		    orderId varchar2(200) not null,
		    memberId varchar2(200) not null,
		    totalAmount number not null,
		    orderDate Date default sysdate,
		    primary key(orderId)
		);

		alter table myorder
		    add CONSTRAINT myorder_memberId_fk FOREIGN key (memberId)
		    REFERENCES member(id);
	*/
	
	private String orderId;
	private String memberId;
	private int totalAmount;
	private Date orderDate;
	
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(int totalAmount) {
		this.totalAmount = totalAmount;
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
}
