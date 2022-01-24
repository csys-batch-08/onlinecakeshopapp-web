package com.cakeshop.model;

import java.time.LocalDate;

public class SpecialCake {

	private int userId;	
	private String flavour;
	private String type;
	private String shape;
	private int quantity;	
	private LocalDate orderDate;
	
	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public LocalDate getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getFlavour() {
		return flavour;
	}
	public void setFlavour(String flavour) {
		this.flavour = flavour;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getShape() {
		return shape;
	}
	public void setShape(String shape) {
		this.shape = shape;
	}
	
	
	public SpecialCake(int userId, String flavour, String type, String shape, int quantity,LocalDate orderDate) {
		super();
		this.userId = userId;
		this.flavour = flavour;
		this.type = type;
		this.shape = shape;
		this.quantity = quantity;
		
		this.orderDate = orderDate;
	}
	public SpecialCake() {
		super();
		// TODO Auto-generated constructor stub
	}
	
		
	
}
