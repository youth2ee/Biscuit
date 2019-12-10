package com.biscuit.b1.model;

import java.util.Date;

public class CartListVO {

	/*
	cart_num number(8),
    member_id VARCHAR2(200),
    store_num NUMBER(5) CONSTRAINT cart_storenum_fk REFERENCES store,
    cart_amount NUMBER(4) not null,
    cart_date date default sysdate,
    */
	
	private int cart_num;
	private String member_id;
	private int store_num;
	private int cart_amount;
	private Date cart_date;
	
	private int cartList_num;
	private String store_name;
	private int store_price;
	private String store_thumbimg;
	
	public int getCart_num() {
		return cart_num;
	}
	public void setCart_num(int cart_num) {
		this.cart_num = cart_num;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getStore_num() {
		return store_num;
	}
	public void setStore_num(int store_num) {
		this.store_num = store_num;
	}
	public int getCart_amount() {
		return cart_amount;
	}
	public void setCart_amount(int cart_amount) {
		this.cart_amount = cart_amount;
	}
	public Date getCart_date() {
		return cart_date;
	}
	public void setCart_date(Date cart_date) {
		this.cart_date = cart_date;
	}
	public int getCartList_num() {
		return cartList_num;
	}
	public void setCartList_num(int cartList_num) {
		this.cartList_num = cartList_num;
	}
	public String getStore_name() {
		return store_name;
	}
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	public int getStore_price() {
		return store_price;
	}
	public void setStore_price(int store_price) {
		this.store_price = store_price;
	}
	public String getStore_thumbimg() {
		return store_thumbimg;
	}
	public void setStore_thumbimg(String store_thumbimg) {
		this.store_thumbimg = store_thumbimg;
	}
}
