package com.devpro.model;

public class register {

	static String name;
	private static String email;
	static String comment;
	private static String phonenumber;
	private static String password;

	public String name() {
//		return "gọi hàm get: " + firstname;
		return name;
	}

	public void getname(String name) {
		register.name = name;
	}

	public void setcomment(String comment) {
		register.comment = comment;
	}

	public static String getemail() {
		// TODO Auto-generated method stub
		return email;
	}

	public static String getname() {
		// TODO Auto-generated method stub
		return name;
	}
	public static String getcomment() {
		// TODO Auto-generated method stub
		return comment;
	}

	public static String getpassword() {
		// TODO Auto-generated method stub
		return password;
	}

	public static String getphonenumber() {
		// TODO Auto-generated method stub
		return phonenumber;
	}


}
