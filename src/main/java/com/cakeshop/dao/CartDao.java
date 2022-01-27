package com.cakeshop.dao;

import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.List;

import com.cakeshop.model.Cart;

public interface CartDao {

	public void insertCart(Cart cart);

	public List<Cart> viewCart();

	public void deleteCart(int userId);
	
	public ResultSet viewUserCart(int userId);
	
	public boolean checkUser(int userId,LocalDate orderDate);
	
	public List<Cart> filterSales(LocalDate min, LocalDate max);

}
