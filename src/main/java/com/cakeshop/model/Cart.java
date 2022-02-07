package com.cakeshop.model;

import java.time.LocalDate;

public class Cart {

	private int cartId;
	private int productId;
	private String cakeName;
	private int userId;
	private String userName;
	private String email;
	private int quantity;
	private double totalPrice;
	private LocalDate orderDate;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

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

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public LocalDate getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(LocalDate string) {
		this.orderDate = string;
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

	public Cart(int cartId, String cakeName, String email, int quantity, double totalPrice, LocalDate orderDate) {
		super();
		this.cartId = cartId;
		this.cakeName = cakeName;
		this.email = email;
		this.quantity = quantity;
		this.totalPrice = totalPrice;
		this.orderDate = orderDate;
	}

	public Cart() {
		super();
	}

}