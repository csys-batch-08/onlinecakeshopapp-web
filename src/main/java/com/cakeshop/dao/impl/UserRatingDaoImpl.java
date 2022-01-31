package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.cakeshop.dao.UserRatingDao;


public class UserRatingDaoImpl implements UserRatingDao{
	
	public void updateRating(double rating,int proId,int count) throws SQLException{
		String updaterating="update product_details set rating=?,rating_count=? where cake_Id=?";
	
		Connection 	con=null;			
		PreparedStatement pstmt=null;
		try {
			con=ConnectionUtil.getDbConnection();
			pstmt = con.prepareStatement(updaterating);
			pstmt.setDouble(1,rating);
			pstmt.setInt(3, proId);	
			pstmt.setInt(2, count);
			pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
		} catch (SQLException e) {

			e.getMessage();
		} finally {
			
			if(pstmt!=null) {
				pstmt.close();
			}			
			if(con!=null) {
				con.close();
			}
	 }
		
	}

}


