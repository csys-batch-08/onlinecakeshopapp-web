package com.cakeshop.dao;

import com.cakeshop.model.User;

public interface AdminDao {

	public  User validateAdmin (String emailId,String password);
}
