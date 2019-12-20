package com.biscuit.b1.model;

public class MemberVO {

	private String id;
	private String pw;
	private String name;
	private String email;
	private String address;
	private String post;
	private String phone;
	private String birth;
	private String gender;
	private int grade;
	private int grade_point;
	private String signIn_date;
	
	private String grade_name;
	
	

	public String getGrade_name() {
		return grade_name;
	}

	public void setGrade_name(String grade_name) {
		this.grade_name = grade_name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String string) {
		this.post = string;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public int getGrade_point() {
		return grade_point;
	}

	public void setGrade_point(int grade_point) {
		this.grade_point = grade_point;
	}

	public String getSignIn_date() {
		return signIn_date;
	}

	public void setSignIn_date(String signIn_date) {
		this.signIn_date = signIn_date;
	}

}
