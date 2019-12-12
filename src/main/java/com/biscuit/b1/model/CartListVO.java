package com.biscuit.b1.model;

import java.util.Date;

public class CartListVO {

	private int cart_num; //카트 번호(PK)
	private String member_id; //주문한 유저 아이디
	private int store_num; //스토어 번호
	private int cart_amount; //주문 수량
	private Date cart_date; //주문 날짜
	
	private int cartList_num; //카트 리스트 번호
	private String store_name; //스토어 상품 이름
	private int store_price; //스토어 상품 가격
	private String store_note; //스토어 상품 상세 내역
	private String store_thumbimg; //스토어 상품 썸네일 이미지
	
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
	public String getStore_note() {
		return store_note;
	}
	public void setStore_note(String store_note) {
		this.store_note = store_note;
	}
	public String getStore_thumbimg() {
		return store_thumbimg;
	}
	public void setStore_thumbimg(String store_thumbimg) {
		this.store_thumbimg = store_thumbimg;
	}
}
