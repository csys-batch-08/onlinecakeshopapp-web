package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.cakeshop.dao.HelpDao;
import com.cakeshop.model.Help;
import com.cakeshop.model.Products;


public class HelpDaoImpl implements HelpDao{

	public List<Help> showHelp() {
		List<Help> Showhelp=new ArrayList<Help>();		
       
		String showQuery = "select phone,email from help_support";
		Connection con = ConnectionUtil.getDbConnection();		
		ResultSet rs=null;
		
		try {
			Statement stmt = con.createStatement();
			 rs = stmt.executeQuery(showQuery);	
				Help cake = new Help();
				cake.setPhone(rs.getLong(1));
				System.out.println("hii");
				cake.setEmail(rs.getString(2));
				Showhelp.add(cake);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Showhelp;
				
	}
	
}
