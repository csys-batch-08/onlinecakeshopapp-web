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
			System.out.println(cart.getProductId()+cart.getUserId()+cart.getQuantity()+cart.getTotalPrice());
			pst = con.prepareStatement(insert);
			pst.setInt(1, cart.getProductId());
			pst.setInt(2, cart.getUserId());
			pst.setInt(3, cart.getQuantity());
			pst.setDouble(4, cart.getTotalPrice());
			pst.setDate(5, java.sql.Date.valueOf(cart.getOrderDate()));
			pst.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.err.println("Value not inserted in the table");
		}

	}
	
		

//view cart items

	public  ResultSet viewCart() {	
		
		
	String query = "select cake_id,count(order_quantity),sum(total_price),user_id,trunc(order_date) from cart_items group by cake_id,user_id ,trunc(order_date) order by trunc(order_date) desc";
				
		Connection con = ConnectionUtil.getDbConnection();				
		ResultSet rs=null;
		
		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(query);				
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return rs;
	}

	

	// delete cart

	public void deleteCart(int userId)  {
	
		String deleteQuery = "delete from cart_items where user_id="+userId+"";

		try {
		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement pstmt = con.prepareStatement(deleteQuery);
		int i = pstmt.executeUpdate();			
		pstmt.close();
		con.close();	
		System.out.println("cart deleted");
		}
		catch(SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}
		
	}

	public ResultSet viewUserCart(int userId) {
		String query = "select cart_id,Email_id,cake_name,order_quantity,Total_price,Order_date from cart_items inner join user_details using (user_id) inner join product_details using(cake_id) where user_id=? order by order_date desc";
		
		Connection con=ConnectionUtil.getDbConnection();
		PreparedStatement stmt;
		
		ResultSet rs=null;
		try {
			stmt=con.prepareStatement(query);
			//System.out.println(userId);
			stmt.setInt(1,userId) ;			
			rs=stmt.executeQuery();	
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		return rs;
		
	}
	
	
//filter sales	
	public ResultSet filterSales(LocalDate min,LocalDate max) {
		String query = "select count(user_id),sum(total_price),sum(order_quantity) from cart_items where order_date between ? and ?";

		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement stmt;
		ResultSet rs = null;
		try {
			stmt = con.prepareStatement(query);			
			stmt.setDate(1, java.sql.Date.valueOf(min));
			stmt.setDate(2, java.sql.Date.valueOf(max));
			rs = stmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;

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

	
	
	
	
	
			




