package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cakeshop.dao.UserRatingDao;
import com.cakeshop.model.Products;

public class UserRatingDaoImpl implements UserRatingDao{
	
	public void updateRating(double rating,int proId,int count) throws SQLException{
		String updateQuery="update product_details set rating=?,rating_count=? where cake_Id=?";
	
		Connection 	con=null;			
		PreparedStatement pstmt=null;
		try {
			con=ConnectionUtil.getDbConnection();
			pstmt = con.prepareStatement(updateQuery);
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
	public List<Products> findRating(String proName) throws SQLException
	{
		List<Products> ratinglist=new ArrayList<>();
		String findRating="select rating,rating_count from product_details where cake_name='"+proName+"'";
		Connection con=null;
		ResultSet rs=null;
		PreparedStatement stmt=null;
		try {
			con=ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(findRating);
			 rs= stmt.executeQuery();
			while(rs.next()) {
				Products product=new Products();
				product.setRating(rs.getDouble(1));
				
				product.setRatingCount(rs.getInt(2));
				
               ratinglist.add(product);				
			}
			
			
		} catch (SQLException e) {

			e.getMessage();
		}finally {
			
			if(stmt!=null) {
				stmt.close();
			}			
			if(con!=null) {
				con.close();
			}
		}
		
		return ratinglist;
	}

}


