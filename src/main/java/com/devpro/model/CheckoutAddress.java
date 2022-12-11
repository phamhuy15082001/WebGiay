package com.devpro.model;

public class CheckoutAddress {

	private String name;
	private String email;
	private String comment;

	public String name() {
//		return "gọi hàm get: " + firstname;
		return name;
	}

	public void getname(String name) {
		this.name = name;
	}

	public void setcomment(String comment) {
		this.comment = comment;
	}

	public String getemail() {
		// TODO Auto-generated method stub
		return email;
	}

	public String getname() {
		// TODO Auto-generated method stub
		return name;
	}
	public String getcomment() {
		// TODO Auto-generated method stub
		return comment;
	}

	public String getphonenumber() {
		// TODO Auto-generated method stub
		return null;
	}

}
