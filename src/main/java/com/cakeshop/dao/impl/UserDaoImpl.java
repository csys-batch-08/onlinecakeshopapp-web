package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cakeshop.connection.ConnectionUtil;
import com.cakeshop.dao.UserDao;
import com.cakeshop.model.User;

public class UserDaoImpl implements UserDao {
	@Override
	public void insertUser(User user) throws SQLException {
		String insertQuery = "insert into user_details(user_name,email_id,password,address) values(?,?,?,?)";
		PreparedStatement pst = null;
		Connection con = null;
		try {
			con = ConnectionUtil.getDbConnection();
			pst = con.prepareStatement(insertQuery);
			pst.setString(1, user.getUserName());
			pst.setString(2, user.getEmailId());
			pst.setString(3, user.getPassword());
			pst.setString(4, user.getAddress());
			pst.executeUpdate();

		} catch (Exception e1) {

			e1.getMessage();
		} finally {

			if (pst != null) {
				pst.close();
			}
			if (con != null) {
				con.close();
			}
		}

	}

	@SuppressWarnings({})
	@Override
	public User validateUser(String emailId, String password) throws SQLException {
		String validateQuery = "select user_id,user_name,email_id,password,address,role,user_wallet from user_details where Email_id=? and password=?";

		Connection con = null;
		User user = null;
		PreparedStatement pstm = null;
		try {
			con = ConnectionUtil.getDbConnection();
			pstm = con.prepareStatement(validateQuery);
			pstm.setString(1, emailId);
			pstm.setString(2, password);

			ResultSet rs = pstm.executeQuery();
			if (rs.next()) {

				user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getDouble(7));
				return user;
			}
		} catch (SQLException e) {

			e.getMessage();

		} finally {

			if (pstm != null) {
				pstm.close();
			}
			if (con != null) {
				con.close();
			}
		}

		return user;
	}

	@Override
	public List<User> showAllUser() throws SQLException {
		List<User> userlist = new ArrayList<>();

		Connection con = null;

		String selectQuery = "select user_id,user_name,email_id,password,address,role,user_wallet from user_details where role not in 'Admin'";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			con = ConnectionUtil.getDbConnection();
			pstmt = con.prepareStatement(selectQuery);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				User user = new User();
				user.setUserId(rs.getInt(1));
				user.setUserName(rs.getString(2));
				user.setEmailId(rs.getString(3));
				user.setPassword(rs.getString(4));
				user.setAddress(rs.getString(5));
				user.setRole(rs.getString(6));
				user.setWallet(rs.getDouble(7));
				userlist.add(user);
			}
		} catch (SQLException e) {
			e.getMessage();
		} finally {

			if (pstmt != null) {
				pstmt.close();
			}
			if (con != null) {
				con.close();
			}
		}

		return userlist;
	}

	@Override
	public void deletedetails(String delete) throws SQLException {
		String deleteQuery = "delete from user_details where Email_id=?";
		PreparedStatement pstmte = null;
		Connection con = null;
		try {
			con = ConnectionUtil.getDbConnection();
			pstmte = con.prepareStatement(deleteQuery);
			pstmte.setString(1, delete);
			pstmte.executeUpdate();

			pstmte.close();
			con.close();
		} catch (SQLException e) {
			e.getMessage();
		} finally {

			if (pstmte != null) {
				pstmte.close();
			}
			if (con != null) {
				con.close();
			}
		}
	}

	@Override
	public int findUserId(String userName) throws SQLException {

		String findUserID = "select user_id from user_details where email_id=?";
		Connection con = null;
		PreparedStatement stmt = null;

		int userId = 0;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(findUserID);
			stmt.setString(1, userName);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				userId = rs.getInt(1);
			}

		} catch (SQLException e) {

			e.getMessage();
		} finally {

			if (stmt != null) {
				stmt.close();
			}
			if (con != null) {
				con.close();
			}
		}
		return userId;

	}

	@Override
	public void updatePassword(String newPassword, String emailId) throws SQLException {
		String updateQuery = "update user_details set password =?  where Email_id=?";

		PreparedStatement prepare = null;
		Connection con = null;
		try {
			con = ConnectionUtil.getDbConnection();
			prepare = con.prepareStatement(updateQuery);

			prepare.setString(1, newPassword);

			prepare.setString(2, emailId);

			prepare.executeUpdate();

		} catch (SQLException e) {
			e.getMessage();
		} finally {
			if (prepare != null) {
				prepare.close();
			}

			if (con != null) {
				con.close();
			}

		}
	}

	@Override
	public void inactiveUser(String emailId) throws SQLException {
		String inactivequery = "update user_details set role ='Inactive' where Email_id=?";

		PreparedStatement prepare1 = null;
		Connection con = null;
		try {
			con = ConnectionUtil.getDbConnection();
			prepare1 = con.prepareStatement(inactivequery);
			prepare1.setString(1, emailId);

			prepare1.executeUpdate();

			prepare1.close();
			con.close();
		} catch (SQLException e) {

			e.getMessage();
		} finally {

			if (prepare1 != null) {
				prepare1.close();
			}
			if (con != null) {
				con.close();
			}
		}

	}

	@Override
	public int editUser(String name, String address, int userId) throws SQLException {
		String editquery = "update user_details set user_name=?,address=? where user_id=?";
		PreparedStatement prepare3 = null;
		Connection con = null;
		try {
			con = ConnectionUtil.getDbConnection();
			prepare3 = con.prepareStatement(editquery);
			prepare3.setString(1, name);
			prepare3.setString(2, address);
			prepare3.setInt(3, userId);
			prepare3.executeUpdate();
			prepare3.close();
			con.close();
			return 1;

		} catch (SQLException e) {

			e.getMessage();
		} finally {

			if (prepare3 != null) {
				prepare3.close();
			}
			if (con != null) {
				con.close();
			}
		}
		return 1;

	}

	public boolean checkEmail(String email) throws SQLException {
		String emailCheck = "select email_id from user_details where email_id in ?";
		PreparedStatement pstmt = null;
		Connection con = null;

		try {
			con = ConnectionUtil.getDbConnection();
			pstmt = con.prepareStatement(emailCheck);
			pstmt.setString(1, email);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
		} catch (SQLException e) {

			e.getMessage();
		} finally {

			if (pstmt != null) {
				pstmt.close();
			}
			if (con != null) {
				con.close();
			}
		}

		return false;
	}

}