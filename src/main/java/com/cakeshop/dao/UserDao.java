package com.cakeshop.dao;

import java.sql.SQLException;
import java.util.List;

import com.cakeshop.model.User;


public interface UserDao {
	
	public void insertUser(User user) throws SQLException;

	public User validateUser(String emailId, String password) throws SQLException;

	public List<User> showAllUser() throws SQLException;	

	public void deletedetails(String delete) throws SQLException;

	public int findUserId(String userName) throws SQLException;

	 public  void inactiveUser(String emailId) throws SQLException;
	 
	 public  void updatePassword(String newPassword, String emailId) throws SQLException;
	 
	  public  int editUser(String name,String email,String address,double wallet,int userId) throws SQLException;
}
