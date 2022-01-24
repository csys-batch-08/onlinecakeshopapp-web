package com.cakeshop.model;

import java.util.Objects;

public class Admin {

	private String name;
	private String emailId;
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Admin(String name, String emailId, String password) {
		super();
		this.name = name;
		this.emailId = emailId;
		this.password = password;
	}
	
	public Admin() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Admin name=" + name + ", \nemailId=" + emailId + ", \npassword=" + password ;
	}
	
}
