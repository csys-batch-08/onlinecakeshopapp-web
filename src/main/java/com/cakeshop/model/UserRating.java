package com.cakeshop.model;

public class UserRating {
	
	private String productName;
	private int proName;
	private int rating;
	
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProName() {
		return proName;
	}
	public void setProName(int proName) {
		this.proName = proName;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public UserRating(String productName, int proName, int rating) {
		super();
		this.productName = productName;
		this.proName = proName;
		this.rating = rating;
	}
	public UserRating() {
		super();

	}
	@Override
	public String toString() {
		return "UserRating [ProductName=" + productName + ", ProName=" + proName + ", rating=" + rating + "]";
	}
	
	
	
	
	
	

}
