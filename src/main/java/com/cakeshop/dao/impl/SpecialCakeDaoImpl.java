package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import com.cakeshop.model.SpecialCake;


public class SpecialCakeDaoImpl {

	
	public void insertCake(SpecialCake cake) throws SQLException {
		String insertQuery = "insert into customized_details(user_id,flavour,types,shape,quantity,order_date) values(?,?,?,?,?,?)";
		 
		PreparedStatement pst = null;
		Connection con=null;
		try {
			
			 con = ConnectionUtil.getDbConnection();			 
			 pst = con.prepareStatement(insertQuery);
			
			    pst.setInt(1, cake.getUserId());
				pst.setString(2, cake.getFlavour());
				pst.setString(3, cake.getType());
				pst.setString(4, cake.getShape());	
				pst.setInt(5, cake.getQuantity());
				pst.setDate(6, java.sql.Date.valueOf(cake.getOrderDate()));
				pst.executeUpdate();
				
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
		
}
 
	public List<SpecialCake> viewCustomizedCart(int userId) throws SQLException {
		
		List<SpecialCake> orderlist=new ArrayList<>();
		
		String query = "select Email_id,quantity,Order_date,flavour,types,shape,(quantity*initial_amount)as total_price from customized_details inner join user_details using (user_id) where user_id=? order by order_date desc";
		Connection con=null;
		PreparedStatement stmt = null;		
		ResultSet rs=null;
		try {
			con=ConnectionUtil.getDbConnection();
			stmt=con.prepareStatement(query);			
			stmt.setInt(1,userId);			
			rs=stmt.executeQuery();	
			
			while(rs.next()) {
				SpecialCake cake=new SpecialCake();
				cake.setEmail(rs.getString(1));
				cake.setQuantity(rs.getInt(2));
				cake.setOrderDate(rs.getDate(3).toLocalDate());
				cake.setFlavour(rs.getString(4));
				cake.setType(rs.getString(5));
				cake.setShape(rs.getString(6));
				cake.setTotalPrice(rs.getDouble(7));
				orderlist.add(cake);				
			}				
		} catch (SQLException e) {			
			e.getMessage();
		}	
		 finally {
				
				if(stmt!=null) {
					stmt.close();
				}			
				if(con!=null) {
					con.close();
				}
		 }
		return orderlist;		
	}
	
	public ResultSet findPrice(int proID) throws SQLException {
		String query = "select initial_amount from customized_details where custcake_id ='" + proID + "'";

		Connection con=null;
		PreparedStatement stmt = null;

		ResultSet rs = null;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();
		} catch (SQLException e) {

			e.getMessage();
		}	
		 finally {
				
				if(stmt!=null) {
					stmt.close();
				}			
				if(con!=null) {
					con.close();
				}
		 }

		return rs;

	}
	

	
}
