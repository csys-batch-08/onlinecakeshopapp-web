package com.cakeshop.model;

import java.time.LocalDate;
import java.util.Date;
import java.util.Objects;

public class Cart {

	private int productId;
	private String cakeName;
	private int userId;
	private String userName;
	private int quantity;
	private double totalPrice;
	private LocalDate orderDate;
	

	public String getCakeName() {
		return cakeName;
	}
	public void setCakeName(String cakeName) {
		this.cakeName = cakeName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}

	
	public LocalDate getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(LocalDate orderDate) {
		this.orderDate = orderDate;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	public Cart(String cakeName, String userName, int quantity, double totalPrice, LocalDate orderDate) {
		super();
		this.cakeName = cakeName;
		this.userName = userName;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.orderDate = orderDate;
	}
	
	public Cart(int productId, int userId, int quantity, double totalPrice, LocalDate orderDate) {
		super();
		this.productId = productId;
		this.userId = userId;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.orderDate = orderDate;
	}
	public Cart() {
		super();
	}	
	
	
	@Override
	public String toString() {
		return  String.format("%-10s%-10s%-10s%-10s",productId,userId,quantity,totalPrice,orderDate+"\n");
	}

	
}