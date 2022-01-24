package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cakeshop.model.SpecialCake;


public class SpecialCakeDaoImpl {

	
	public void insertCake(SpecialCake cake) {
		String insertQuery = "insert into customized_details(user_id,flavour,types,shape,quantity,order_date) values(?,?,?,?,?,?)";
		 
		PreparedStatement pst = null;
		try {
			
			ConnectionUtil conUtil = new ConnectionUtil();
			Connection con = conUtil.getDbConnection();
			 
			 pst = con.prepareStatement(insertQuery);
			 System.out.println(cake.getUserId());
			 System.out.println(cake.getFlavour());
			    pst.setInt(1, cake.getUserId());
				pst.setString(2, cake.getFlavour());
				pst.setString(3, cake.getType());
				pst.setString(4, cake.getShape());	
				pst.setInt(5, cake.getQuantity());
				pst.setDate(6, java.sql.Date.valueOf(cake.getOrderDate()));
				pst.executeUpdate();
				
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
}
 
	public ResultSet viewCustomizedCart(int userId) {
		String query = "select Email_id,quantity,Order_date,flavour,types,shape,(quantity*initial_amount)as total_price from customized_details inner join user_details using (user_id) where user_id=? order by order_date desc";
		Connection con=ConnectionUtil.getDbConnection();
		PreparedStatement stmt;		
		ResultSet rs=null;
		try {
			stmt=con.prepareStatement(query);			
			stmt.setInt(1,userId) ;			
			rs=stmt.executeQuery();	
			return rs;
		} catch (SQLException e) {			
			e.printStackTrace();
		}		
		return rs;		
	}
	
	public ResultSet findPrice(int proID) {
		String query = "select initial_amount from customized_details where custcake_id ='" + proID + "'";

		Connection con = ConnectionUtil.getDbConnection();
		Statement stmt;

		ResultSet rs = null;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;

	}
	
//	public void deleteOrder(int userId)  {
//		
//		String deleteQuery = "delete from customized_details where user_id="+userId+"";
//
//		try {
//		Connection con = ConnectionUtil.getDbConnection();
//		PreparedStatement pstmt = con.prepareStatement(deleteQuery);
//		int i = pstmt.executeUpdate();			
//		pstmt.close();
//		con.close();	
//		//System.out.println("cart deleted");
//		}
//		catch(SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//			
//		}
//		
//	}

	
}
