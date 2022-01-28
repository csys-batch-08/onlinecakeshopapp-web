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

	public List<Help> showHelp() {
		List<Help> help=new ArrayList<>();		
       
		String showQuery = "select phone,email from help_support";
		Connection con = ConnectionUtil.getDbConnection();		
		ResultSet rs=null;
		
		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(showQuery);	
				Help cake = new Help();
				cake.setPhone(rs.getLong(1));			
				cake.setEmail(rs.getString(2));
				help.add(cake);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return help;
				
	}
	
}
