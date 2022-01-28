package com.cakeshop.dao;

import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

import com.cakeshop.model.Cart;

public interface CartDao {

	public void insertCart(Cart cart) throws SQLException;

	public List<Cart> viewCart() throws SQLException;

	public void deleteCart(int userId) throws SQLException;
	
	public List<Cart> viewUserCart(int userId) throws SQLException;
	
	public boolean checkUser(int userId,LocalDate orderDate) throws SQLException;
	
	public List<Cart> filterSales(LocalDate min, LocalDate max) throws SQLException;

}
