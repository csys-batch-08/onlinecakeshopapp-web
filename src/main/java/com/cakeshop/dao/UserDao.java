package com.cakeshop.dao;

import java.sql.ResultSet;
import java.util.List;

import com.cakeshop.model.User;


public interface UserDao {
	
	public void insertUser(User user);

	public User validateUser(String EmailId, String password);

	public List<User> showAllUser();

	public void update(String update);

	public void deletedetails(String delete);

	public int findUserId(String userName);

}
