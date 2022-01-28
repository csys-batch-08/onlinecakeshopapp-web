package com.cakeshop.dao;

import java.sql.SQLException;

import com.cakeshop.model.User;

public interface AdminDao {

	public  User validateAdmin (String emailId,String password) throws SQLException;
}
