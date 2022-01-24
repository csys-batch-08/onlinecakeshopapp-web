package com.cakeshop.dao;

public interface WalletDao {
	
	public int walletbal(int id);

	public void updatewallet(double amount, int userid);

	 public int rechargeWallet(String user);
}
