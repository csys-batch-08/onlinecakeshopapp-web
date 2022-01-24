package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cakeshop.dao.HelpDao;
import com.cakeshop.model.Help;


public class HelpDaoImpl implements HelpDao{

	public ResultSet showHelp() {
		
       
		String showQuery = "select * from help_support";
		Connection con = ConnectionUtil.getDbConnection();
		Help help=null;
		ResultSet rs=null;
		
		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(showQuery);	
			 System.out.println("hi");
			 return rs;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		

		
	}
	
	
}
