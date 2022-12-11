package com.devpro.model;

public class Admin{

	private String name;
	private String ditail;
	private String quantity;

	public String name() {
//		return "gọi hàm get: " + firstname;
		return name;
	}

	public void getname(String name) {
		this.name = name;
	}

	public void getditail(String ditail) {
		this.setDitail(ditail);
	}
	public String getquantity() {
		// TODO Auto-generated method stub
		return quantity;
	}

	public String getname() {
		// TODO Auto-generated method stub
		return name;
	}
	public String getphonenumber() {
		// TODO Auto-generated method stub
		return null;
	}

	public String getDitail() {
		return ditail;
	}

	public void setDitail(String ditail) {
		this.ditail = ditail;
	}

}
