package com.cakeshop.model;

import java.util.Objects;

public class User {
	private int userId;
	private String userName;
	private String EmailId;
	private String password;
	private String address;
	private String role;
	private double wallet;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public double getWallet() {
		return wallet;
	}

	public void setWallet(double wallet) {
		this.wallet = wallet;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmailId() {
		return EmailId;
	}

	public void setEmailId(String emailId) {
		EmailId = emailId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Override
	public int hashCode() {
		return Objects.hash(EmailId, password, userName);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User other = (User) obj;
		return Objects.equals(EmailId, other.EmailId) && Objects.equals(password, other.password)
				&& Objects.equals(userName, other.userName);
	}

	public User(String userName, String emailId, String password, String address) {
		super();
		this.userName = userName;
		this.EmailId = emailId;
		this.password = password;
		this.address = address;
	}
	
	public User(int userId, String userName, String emailId, String password, String address, String role,
			double wallet) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.EmailId = emailId;
		this.password = password;
		this.address = address;
		this.role = role;
		this.wallet = wallet;
	}

	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "User userName=" + userName + ",\n EmailId=" + EmailId + ",\n password=" + password + ", \naddress=" + address;
	}
}