package com.biscuit.b1.model;

import java.util.Date;

public class PayInfoVO {
	private String aid; // 리퀘스트 고유 번호
	private String tid; // 결제 고유 번호
	private String cid; // 가맹점 코드
	private String sid; // 	subscription id. 정기(배치)결제 CID로 결제요청한 경우 발급
	private String partner_order_id; // 가맹점 주문번호
	private String partner_user_id; // 가맹점 회원id
	private String payment_method_type; // 결제 수단. 카드,현금 중 하나
	private AmountVO amount; // 결제 금액 정보
	private CardInfoVO card_info; // 결제 상세 정보(결제수단이 카드일 경우만 포함)
	private String item_name; // 상품 이름 (최대 100자)
	private String item_code; // 상품 코드 (최대 100자)
	private Integer quantity; // 상품 수량
	private Date created_at; // 결제 준비 요청 시각
	private Date approved_at; // 결제 승인 시각
	private String payload; // 리퀘스트로 전달한 값
	

	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public String getTid() {
		return tid;
	}

	public void setTid(String tid) {
		this.tid = tid;
	}

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getSid() {
		return sid;
	}

	public void setSid(String sid) {
		this.sid = sid;
	}

	public String getPartner_order_id() {
		return partner_order_id;
	}

	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}

	public String getPartner_user_id() {
		return partner_user_id;
	}

	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}

	public String getPayment_method_type() {
		return payment_method_type;
	}

	public void setPayment_method_type(String payment_method_type) {
		this.payment_method_type = payment_method_type;
	}

	public AmountVO getAmount() {
		return amount;
	}

	public void setAmount(AmountVO amount) {
		this.amount = amount;
	}

	public CardInfoVO getCard_info() {
		return card_info;
	}

	public void setCard_info(CardInfoVO card_info) {
		this.card_info = card_info;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getItem_code() {
		return item_code;
	}

	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}

	public String getPayload() {
		return payload;
	}

	public void setPayload(String payload) {
		this.payload = payload;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public Date getCreated_at() {
		return created_at;
	}

	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

	public Date getApproved_at() {
		return approved_at;
	}

	public void setApproved_at(Date approved_at) {
		this.approved_at = approved_at;
	}

}
