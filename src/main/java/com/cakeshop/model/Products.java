package com.cakeshop.model;

import java.util.Objects;

public class Products {

	private int cakeId;	
	private String cakeName;
	private String cakeDescription;
	private int cakePrice;
	private String categoryName;
	private double rating;
	public int getCakeId() {
		return cakeId;
	}
	public void setCakeId(int cakeId) {
		this.cakeId = cakeId;
	}
	public double getRating() {
		return rating;
	}
	public void setRating(double rating) {
		this.rating = rating;
	}
	private String picture;
	
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getCakeName() {
		return cakeName;
	}
	public void setCakeName(String cakeName) {
		this.cakeName = cakeName;
	}
	public String getCakeDescription() {
		return cakeDescription;
	}
	public void setCakeDescription(String cakeDescription) {
		this.cakeDescription = cakeDescription;
	}
	public int getCakePrice() {
		return cakePrice;
	}
	public void setCakePrice(int cakePrice) {
		this.cakePrice = cakePrice;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	@Override
	public String toString() {
		return String.format("%-25s%-90s%-10s%-10s",cakeName,cakeDescription,cakePrice,categoryName) ;
	}
	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Products(int cakeId,String cakeName, String cakeDescription, int cakePrice, String categoryName, double rating,String picture) {
		super();
		this.cakeId=cakeId;
		this.cakeName = cakeName;
		this.cakeDescription = cakeDescription;
		this.cakePrice = cakePrice;
		this.categoryName = categoryName;
		this.rating=rating;
		this.picture = picture;
		
	}	
	
	
	
	

	
	
	

}
