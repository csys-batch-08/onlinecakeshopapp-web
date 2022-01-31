package com.cakeshop.dao;

import java.sql.SQLException;

public interface WalletDao {
	
	public int walletbal(int id) throws SQLException;

	public void updatewallet(double amount, int userid) throws SQLException;

	 public int rechargeWallet(String user) throws SQLException;
	 
	 public int walletRefund(String user,int cartid,double wallbal ) throws SQLException;
}
