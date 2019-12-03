package com.biscuit.b1.model;

import java.util.Date;

public class KakaoPayVO {

	// response
	private String tid;
	private String next_redirect_pc_url;
	private Date created_at;
	/*private String next_redirect_mobile_url;
	private String next_redirect_app_url;
	private String android_app_scheme;
	private String ios_app_scheme;*/ // 웹으로만 받아올거라 안씀
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getNext_redirect_pc_url() {
		return next_redirect_pc_url;
	}
	public void setNext_redirect_pc_url(String next_redirect_pc_url) {
		this.next_redirect_pc_url = next_redirect_pc_url;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}

}
