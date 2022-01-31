package com.cakeshop.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class ConnectionUtil {

	public static Connection getDbConnection() {
		Connection con = null;

		try {
			Class.forName("oracle.jdbc.OracleDriver");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			con = DriverManager.getConnection(url, "system", ConnectionPassword.decrypt());
		} catch (Exception e) {
			e.getMessage();
			
		}
		return con;
	}

	public void closeConnection(ResultSet rs, PreparedStatement pstmt,Connection con) throws SQLException {
		if (rs != null) {
			rs.close();
		}
		if (pstmt != null) {
			pstmt.close();
		}
		if (con != null) {
			con.close();
		}
	}
	public static void closePreparedStatement(PreparedStatement pstmt,Connection con) {
		try {
			if (pstmt != null) {
				pstmt.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			e.getMessage();
		}
	}
	
	public static void closeStatement(Statement stmt,Connection con) {
		try {
			if (stmt != null) {
				stmt.close();
			}
			if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			e.getMessage();
		}
	}
	


}