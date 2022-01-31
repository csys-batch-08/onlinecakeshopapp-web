package com.cakeshop.dao.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.cakeshop.connection.ConnectionUtil;
import com.cakeshop.dao.AdminDao;
import com.cakeshop.model.User;

public class AdminDaoImpl implements AdminDao{
	
	public  User validateAdmin (String emailId,String password) throws SQLException{		
		String validateQuery="select user_id,user_name,email_id,password,address,role,user_wallet from user_details where role='Admin'and Email_id= ? and password=?";
		Connection con=null;
		User user=null;
		PreparedStatement pst = null;
	
		try {
			con=ConnectionUtil.getDbConnection();
			pst = con.prepareStatement(validateQuery);
			ResultSet rs=pst.executeQuery();	
			pst.setString(1, emailId);
			pst.setString(2, password);
			if(rs.next()) {
				user=new User(rs.getString(2),emailId,password,rs.getString(5));
				
				return user;
			}			
		}
		catch(SQLException e) {		
			e.getMessage();
			
		}finally {
			if(pst!=null) {
				pst.close();
			}
			if(con!=null) {
				con.close();
			}
		}
		return user;
		
	}	
}
