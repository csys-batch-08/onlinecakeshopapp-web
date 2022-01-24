package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cakeshop.dao.UserRatingDao;

public class UserRatingDaoImpl implements UserRatingDao{
	
	public void updateRating(double rating,int proId,int count){
		String updateQuery="update product_details set rating=?,rating_count=? where cake_Id=?";
	
		Connection con=ConnectionUtil.getDbConnection();				
		PreparedStatement pstmt=null;
		try {
			pstmt = con.prepareStatement(updateQuery);
			pstmt.setDouble(1,rating);
			pstmt.setInt(3, proId);	
			pstmt.setInt(2, count);
			pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public  ResultSet findRating(String proName)
	{
		String findRating="select rating,rating_count from product_details where cake_name='"+proName+"'";
		Connection con=ConnectionUtil.getDbConnection();
		Statement stmt;
		int rating=0;
		try {
			stmt = con.createStatement();
			ResultSet rs=stmt.executeQuery(findRating);
			return rs;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}


