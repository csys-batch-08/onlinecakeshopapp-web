package com.cakeshop.model;

public class Help {

	private String phone;
	private String email;
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Help() {
		super();

	}
	public Help(String phone, String email) {
		super();
		this.phone = phone;
		this.email = email;
	}
	@Override
	public String toString() {
		return "Help [phone=" + phone + ", email=" + email + "]";
	}
	
	
	
	
	
	
}
