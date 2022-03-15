package com.web.entity;

public class User {
	
	private int id;
	private String name;
	private String email;
	private String password;
	private String phone;
	private String place;
	private String gender;
	private boolean flag;
	
	
	public boolean isFlag() {
		return flag;
	}


	public void setFlag(boolean flag) {
		this.flag = flag;
	}


	public User() {
		super();
	}


	public User(String name, String email, String password, String phone, String place, String gender) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.place = place;
		this.gender = gender;
	}


	public User(int id, String name, String email, String password, String phone, String place, String gender) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.place = place;
		this.gender = gender;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
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


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getPlace() {
		return place;
	}


	public void setPlace(String place) {
		this.place = place;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
}
