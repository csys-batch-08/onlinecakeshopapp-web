package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.cakeshop.dao.WalletDao;


public class WalletDaoImpl implements WalletDao {

	// get wallet balance:
	public int walletbal(int userId) {

		String query = "select user_wallet from user_details  where user_id = ?";
		Connection con = ConnectionUtil.getDbConnection();
		int user_wallet = 0;
		try {
			PreparedStatement statement = con.prepareStatement(query);
			statement.setInt(1, userId);
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				user_wallet = rs.getInt(1);
				return user_wallet;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return user_wallet;
	}

//update wallet balance:
	public void updatewallet(double amount, int userid) {

		Connection con = ConnectionUtil.getDbConnection();
		String query = "update user_details set user_wallet = ? where user_id = ?";
		PreparedStatement statement = null;
		try {
			statement = con.prepareStatement(query);
			statement.setDouble(1, amount);
			statement.setInt(2, userid);
			int i = statement.executeUpdate();

			statement.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
// Recharge wallet
	public int rechargeWallet(String user) {

		Connection con = ConnectionUtil.getDbConnection();
		String query = "update user_details set user_wallet =(user_wallet+10000) where user_name = ?";
		PreparedStatement statement = null;
		try {
			statement = con.prepareStatement(query);
			statement.setString(1, user);

			int i = statement.executeUpdate();

			if (i > 0) {
				System.out.println("wallet Updated");
				return 1;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return -1;
	}

	public int WalletRefund(String user,int cartid,double wallbal ) {
		Connection con = ConnectionUtil.getDbConnection();
		System.out.println(cartid);
		String query1="select Total_price from cart_items where cart_id=?";
		double totalPrice=0;
		try {
			PreparedStatement pstmt=con.prepareStatement(query1);
			pstmt.setInt(1, cartid);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()) {
				totalPrice=rs.getDouble(1);
				System.out.println(rs.getDouble(1));
			}
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String query = "update user_details set user_wallet = ? where user_name=?";
		PreparedStatement statement = null;
		try {
			statement = con.prepareStatement(query);
			double newBal=totalPrice+wallbal;
			System.out.println(totalPrice);
			statement.setDouble(1, newBal);
			statement.setString(2,user);
			int i = statement.executeUpdate();

			if (i > 0) {
				System.out.println("wallet Updated");
				return 1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
		}
	
	
	
	
	
	
}
