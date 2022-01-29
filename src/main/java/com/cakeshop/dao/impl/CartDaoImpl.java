package com.cakeshop.dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.cakeshop.dao.CartDao;
import com.cakeshop.model.Cart;

public class CartDaoImpl implements CartDao {

	public void insertCart(Cart cart) throws SQLException {
		

		String insert = "INSERT INTO CART_ITEMS (CAKE_ID,USER_ID,ORDER_QUANTITY,TOTAL_PRICE,order_date) VALUES(?,?,?,?,?) ";

		Connection con=null;
		PreparedStatement pst = null;

		try {
			con = ConnectionUtil.getDbConnection();
			pst = con.prepareStatement(insert);
			pst.setInt(1, cart.getProductId());
			pst.setInt(2, cart.getUserId());
			pst.setInt(3, cart.getQuantity());
			pst.setDouble(4, cart.getTotalPrice());
			pst.setDate(5, java.sql.Date.valueOf(cart.getOrderDate()));
			pst.executeUpdate();
			
		} catch (SQLException e) {
			e.getMessage();
			
		}finally {
			if(pst!=null) {
				pst.close();
			}
			if(con!=null) {
				con.close();
			}
		}

	}

//view cart items

	public  List<Cart> viewCart() throws SQLException {	
		List<Cart> cartList=new ArrayList<>();		
		
	String query = "select cake_name,user_name,count(order_quantity),sum(total_price),trunc(order_date) from cart_items inner join user_details using (user_id) inner join product_details using(cake_id) group by product_details.cake_name,user_details.user_name,trunc(order_date) order by trunc(order_date) desc";
		Connection 	con=null;		
		ResultSet rs=null;	
		PreparedStatement pst = null;
		try {
			con = ConnectionUtil.getDbConnection();	
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
					
		} catch (Exception e) {
			e.getMessage();
		}
		finally {
			if(pst!=null) {
				pst.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		return cartList;
	}	

	// delete cart

	public void deleteCart(int userId) throws SQLException  {
	
		String deleteQuery = "delete from cart_items where cart_id=?";
		PreparedStatement pstmt=null;
		Connection con=null;
		try {
			con = ConnectionUtil.getDbConnection();
		 pstmt = con.prepareStatement(deleteQuery);
		pstmt.setInt(1, userId);
		pstmt.executeUpdate();	
		
		
		}
		catch(SQLException e) {
			e.getMessage();
			
		}finally {
			
			if(pstmt!=null) {
				pstmt.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}
		
	}

	public List<Cart> viewUserCart(int userId) throws SQLException {
		
		List<Cart> cartlist=new ArrayList<>();
		
		String query = "select cart_id,Email_id,cake_name,order_quantity,Total_price,Order_date from cart_items inner join user_details using (user_id) inner join product_details using(cake_id) where user_id=? order by order_date desc";
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		ResultSet rs=null;
		try {
			con=ConnectionUtil.getDbConnection();
			pstmt=con.prepareStatement(query);			
			pstmt.setInt(1,userId) ;			
			rs=pstmt.executeQuery();	
			
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

			e.getMessage();
		}
           finally {
			
			if(pstmt!=null) {
				pstmt.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}
		return cartlist;	
	}
	
	
//filter sales	
	public List<Cart> filterSales(LocalDate min,LocalDate max) throws SQLException {
		
		List<Cart> cartlist=new ArrayList<>();
		
		String query = "select count(user_id),sum(total_price),sum(order_quantity) from cart_items where order_date between ? and ?";

		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		try {
			con = ConnectionUtil.getDbConnection();
			pstmt = con.prepareStatement(query);			
			pstmt.setDate(1, java.sql.Date.valueOf(min));
			pstmt.setDate(2, java.sql.Date.valueOf(max));
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Cart cart=new Cart();
				cart.setUserId(rs.getInt(1));
				cart.setTotalPrice(rs.getDouble(2));
				cart.setQuantity(rs.getInt(3));
				cartlist.add(cart);				
			}				
			
		} catch (SQLException e) {

			e.getMessage();
		}
		 finally {
				
				if(pstmt!=null) {
					pstmt.close();
				}
				
				if(con!=null) {
					con.close();
				}
			}
		return cartlist;

	}
	
	
	public boolean checkUser(int userId,LocalDate orderDate) throws SQLException {
		String query="select * from cart_items where user_id=? and to_char(order_date,'yyyy-mm-dd')=?";
		Connection con=null;
		
		boolean flag=true;
		PreparedStatement pstmt=null;
		try {
			con=ConnectionUtil.getDbConnection();
			pstmt=con.prepareStatement(query);
			pstmt.setInt(1, userId);
			pstmt.setDate(2, java.sql.Date.valueOf(orderDate));
			ResultSet rs=pstmt.executeQuery();
			
			if(rs.next()) {
			new Cart(rs.getInt(2),rs.getInt(3),rs.getInt(4),rs.getDouble(5),(rs).getDate(6).toLocalDate());
				
			}else {
				flag=false;
			}
		}catch (SQLException e) {

			e.getMessage();
		} finally {
			
			if(pstmt!=null) {
				pstmt.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}
			
		return flag;
		
	}

	


	
}	

	
	
	
	
	
			




