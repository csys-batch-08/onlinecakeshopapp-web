package com.cakeshop.dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.cakeshop.dao.CartDao;
import com.cakeshop.dao.ProductDao;
import com.cakeshop.model.Cart;
import com.cakeshop.model.Products;
import com.cakeshop.model.User;

public class CartDaoImpl implements CartDao {

	public void insertCart(Cart cart) {
		

		String insert = "INSERT INTO CART_ITEMS (CAKE_ID,USER_ID,ORDER_QUANTITY,TOTAL_PRICE,order_date) VALUES(?,?,?,?,?) ";

		ConnectionUtil conUtil = new ConnectionUtil();
		Connection con = conUtil.getDbConnection();
		PreparedStatement pst = null;

		try {
			
			pst = con.prepareStatement(insert);
			pst.setInt(1, cart.getProductId());
			pst.setInt(2, cart.getUserId());
			pst.setInt(3, cart.getQuantity());
			pst.setDouble(4, cart.getTotalPrice());
			pst.setDate(5, java.sql.Date.valueOf(cart.getOrderDate()));
			pst.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		}

	}

//view cart items

	public  List<Cart> viewCart() {	
		List<Cart> cartList=new ArrayList<Cart>();		
		
	String query = "select cake_name,user_name,count(order_quantity),sum(total_price),trunc(order_date) from cart_items \r\n"
			+ "inner join user_details using (user_id) \r\n"
			+ "inner join product_details using(cake_id)\r\n"
			+ "group by product_details.cake_name,user_details.user_name,trunc(order_date) \r\n"
			+ "order by trunc(order_date) desc";
		Connection con = ConnectionUtil.getDbConnection();				
		ResultSet rs=null;	
		PreparedStatement pst = null;
		try {
			 pst = con.prepareStatement(query);
			 rs = pst.executeQuery();	
			
			 while(rs.next()) {				 
				 Cart cart=new Cart();
				 cart.setCakeName(rs.getString(1));
				 cart.setUserName(rs.getString(2));
				 cart.setQuantity(rs.getInt(3));
				 cart.setTotalPrice(rs.getDouble(4));
				 cart.setOrderDate(rs.getDate(5).toLocalDate());
				 cartList.add(cart);				 
			 }
			 System.out.println(cartList);			
		} catch (Exception e) {
			e.getMessage();
		}
		return cartList;
	}	

	// delete cart

	public void deleteCart(int userId)  {
	
		String deleteQuery = "delete from cart_items where cart_id=?";

		try {
		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement pstmt = con.prepareStatement(deleteQuery);
		pstmt.setInt(1, userId);
		int i = pstmt.executeUpdate();	
		
		pstmt.close();
		con.close();	
		
		}
		catch(SQLException e) {
			e.printStackTrace();
			
		}
		
	}

	public List<Cart> viewUserCart(int userId) {
		
		List<Cart> cartlist=new ArrayList<Cart>();
		
		String query = "select cart_id,Email_id,cake_name,order_quantity,Total_price,Order_date from cart_items inner join user_details using (user_id) inner join product_details using(cake_id) where user_id=? order by order_date desc";
		
		Connection con=ConnectionUtil.getDbConnection();
		PreparedStatement stmt;
		
		ResultSet rs=null;
		try {
			stmt=con.prepareStatement(query);			
			stmt.setInt(1,userId) ;			
			rs=stmt.executeQuery();	
			
			while(rs.next()) {
				Cart cart=new Cart();
				cart.setCartId(rs.getInt(1));
				cart.setEmail(rs.getString(2));
				cart.setCakeName(rs.getString(3));
				cart.setQuantity(rs.getInt(4));
				cart.setTotalPrice(rs.getDouble(5));
				cart.setOrderDate(rs.getDate(6).toLocalDate());
				cartlist.add(cart);				
			}
					
		} catch (SQLException e) {

			e.printStackTrace();
		}			
		return cartlist;	
	}
	
	
//filter sales	
	public List<Cart> filterSales(LocalDate min,LocalDate max) {
		
		List<Cart> cartlist=new ArrayList<Cart>();
		
		String query = "select count(user_id),sum(total_price),sum(order_quantity) from cart_items where order_date between ? and ?";

		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement stmt;
		ResultSet rs = null;
		try {
			stmt = con.prepareStatement(query);			
			stmt.setDate(1, java.sql.Date.valueOf(min));
			stmt.setDate(2, java.sql.Date.valueOf(max));
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				Cart cart=new Cart();
				cart.setUserId(rs.getInt(1));
				cart.setTotalPrice(rs.getDouble(2));
				cart.setQuantity(rs.getInt(3));
				cartlist.add(cart);				
			}				
			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return cartlist;

	}
	
	
	public boolean checkUser(int userId,LocalDate orderDate) {
		String query="select * from cart_items where user_id='"+userId+"' and to_char(order_date,'yyyy-mm-dd')='"+orderDate+"'";
		Connection con=ConnectionUtil.getDbConnection();
		//System.out.println("hello");
		boolean flag=true;
		Statement stmt;
		try {
			stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery(query);
			if(rs.next()) {
				Cart cart=new Cart(rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getDouble(5),(rs).getDate(6).toLocalDate());
				//System.out.println(rs.getInt(2));
			}else {
				flag=false;
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		return flag;
		
	}

	


	
}	

	
	
	
	
	
			




