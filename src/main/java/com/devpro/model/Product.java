package com.devpro.model;

public class Product {
	private String name;
	private String phonenumber;
	private String email;
	private String address;
	
	public Product() {
		super();
	}


	public Product(String productname, String manufacturername, String manufacturerbrand, float price, String category,
			String feature, String description, String email, String address, String name, String phonenumber) {
		super();
		this.name = name;
		this.phonenumber =  phonenumber;
		this.email = email;
		this.address = address;
	}


	public String getname() {
		return name;
	}


	public void setphonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}


	public String getphonenumber() {
		return phonenumber;
	}


	public void getemail(String email) {
		this.email = email;
	}


	public String getemail() {
		return email;
	}


	public void setaddress(String address) {
		this.address = address;
	}


	public String getaddress() {
		return address;
	}

	
}
