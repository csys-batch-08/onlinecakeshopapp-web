package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.cakeshop.connection.ConnectionUtil;
import com.cakeshop.dao.HelpDao;
import com.cakeshop.model.Help;



public class HelpDaoImpl implements HelpDao{

	public List<Help> showHelp() throws SQLException {
		List<Help> help=new ArrayList<>();		
       
		String showQuery = "select phone,email from help_support";
		Connection con=null;		
		ResultSet rs=null;
		Statement pstmt=null;
		try {
			con = ConnectionUtil.getDbConnection();
			 pstmt = con.createStatement();
			 rs = pstmt.executeQuery(showQuery);	
			 
				Help cake = new Help();
				cake.setPhone(rs.getLong(1));			
				cake.setEmail(rs.getString(2));
				help.add(cake);

		} catch (SQLException e) {
			e.getMessage();
		}
         finally {
			
			if(pstmt!=null) {
				pstmt.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}
		return help;
				
	}
	
}
