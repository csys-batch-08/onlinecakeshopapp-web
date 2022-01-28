package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.cakeshop.dao.WalletDao;


public class WalletDaoImpl implements WalletDao {

	// get wallet balance:
	public int walletbal(int userId) throws SQLException {

		String query = "select user_wallet from user_details  where user_id = ?";
		Connection con=null;
		PreparedStatement stmt=null;
		int userwallet = 0;
		try {
			con = ConnectionUtil.getDbConnection();
			 stmt = con.prepareStatement(query);
			stmt.setInt(1, userId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				userwallet = rs.getInt(1);
				return userwallet;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}finally {
			
			if(stmt!=null) {
				stmt.close();
			}			
			if(con!=null) {
				con.close();
			}
		}

		return userwallet;
	}

//update wallet balance:
	public void updatewallet(double amount, int userid) throws SQLException {

		Connection con=null;
		String query = "update user_details set user_wallet = ? where user_id = ?";
		PreparedStatement stmt = null;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(query);
			stmt.setDouble(1, amount);
			stmt.setInt(2, userid);
			 stmt.executeUpdate();

			
		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally {
			
			if(stmt!=null) {
				stmt.close();
			}			
			if(con!=null) {
				con.close();
			}
		}

	}
// Recharge wallet
	public int rechargeWallet(String user) throws SQLException {

		Connection con=null;
		String query = "update user_details set user_wallet =(user_wallet+10000) where user_name = ?";
		PreparedStatement stmt = null;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(query);
			stmt.setString(1, user);

			int i = stmt.executeUpdate();

			if (i > 0) {
				
				return 1;
			}

		} catch (SQLException e) {

			e.printStackTrace();
		}
		finally {
			
			if(stmt!=null) {
				stmt.close();
			}			
			if(con!=null) {
				con.close();
			}
		}

		return -1;
	}

	public int walletRefund(String user,int cartid,double wallbal ) throws SQLException {
		
		Connection con=null;		
		String query1="select Total_price from cart_items where cart_id=?";
		double totalPrice=0;
		PreparedStatement pstmt=null;
		PreparedStatement statement=null;
		
		try {
			con = ConnectionUtil.getDbConnection();
			 pstmt=con.prepareStatement(query1);
			pstmt.setInt(1, cartid);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				totalPrice=rs.getDouble(1);				
					
		String query = "update user_details set user_wallet = ? where user_name=?";
		   			
			statement = con.prepareStatement(query);
			double newBal=totalPrice+wallbal;			
			statement.setDouble(1, newBal);
			statement.setString(2,user);
			int i = statement.executeUpdate();

			if (i > 0) {
				
				return 1;
			}
		} 
			}catch (SQLException e) {

			e.printStackTrace();
		}
		
         finally {
			
			if(pstmt!=null) {
				pstmt.close();
			}
			if(statement!=null) {
				statement.close();
			}
			if(con!=null) {
				con.close();
			}
			
		}
		
		return -1;
		}
	
	
	
	
	
	
}
