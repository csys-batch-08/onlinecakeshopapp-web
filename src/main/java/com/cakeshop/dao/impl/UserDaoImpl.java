package com.cakeshop.dao.impl;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.cakeshop.dao.UserDao;
import com.cakeshop.model.Cart;
import com.cakeshop.model.Products;
import com.cakeshop.model.User;


public class UserDaoImpl implements UserDao{

	//insert user method
	@Override
	public void insertUser(User user) {
			String insertQuery = "insert into user_details(user_name,email_id,password,address) values(?,?,?,?)";
			 
			PreparedStatement pst = null;
			try {
				
				
				Connection con = ConnectionUtil.getDbConnection();
				 
				 pst = con.prepareStatement(insertQuery);
					pst.setString(1, user.getUserName());
					pst.setString(2, user.getEmailId());
					pst.setString(3, user.getPassword());
					pst.setString(4, user.getAddress());
					pst.executeUpdate();
					
			} catch (Exception e1) {

				e1.printStackTrace();
			}
				
		}

	//validate user method
	@Override
		public  User validateUser(String EmailId, String password) {
			String validateQuery = "select * from user_details where Email_id='" + EmailId 
					+ "'and password='" + password + "'";

			Connection con = ConnectionUtil.getDbConnection();
			User user = null;
			try {
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery(validateQuery);
				if (rs.next()) {
					
					user = new User(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), 
							rs.getString(5),rs.getString(6),rs.getDouble(7));
					return user;
				}		
				
			} catch (SQLException e) {

				e.printStackTrace();
				
			}
			return user;
		}

	//show all user method 
		
@Override		
		public  List<User> showAllUser() {		
	        List<User> userlist=new ArrayList<User>();
	        
			Connection con = ConnectionUtil.getDbConnection();

			String selectQuery = "select user_id,user_name,email_id,password,address,role,user_wallet from user_details where role not in 'Admin'";

			ResultSet rs=null;	
			try {
				Statement stmt = con.createStatement();
				 rs = stmt.executeQuery(selectQuery);
				 
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
				e.printStackTrace();
			}

			return userlist;
		}		

//update user
@Override
public void update(String update)  {
			String updateQuery = "update user_details set password=?  where Email_id=?";
			
			Connection con = ConnectionUtil.getDbConnection();
			
	      try {
			PreparedStatement pstmt = con.prepareStatement(updateQuery);
			pstmt.setString(1, update.split(",")[0]);
			pstmt.setString(2, update.split(",")[1]);
			 pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
	      }catch (SQLException e) {
				e.printStackTrace();
			}
		}

//delete method
        @Override
		public void deletedetails(String delete)  {
			String deleteQuery = "delete from user_details where Email_id=?";

			Connection con = ConnectionUtil.getDbConnection();
			try {
			PreparedStatement pstmt = con.prepareStatement(deleteQuery);
			pstmt.setString(1, delete);
			 pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}

	//find user id method
@Override
		public  int findUserId(String userName) {
			
			String findUserID = "select user_id from user_details where email_id='"+userName+"'";
			Connection con = ConnectionUtil.getDbConnection();
			Statement stmt;
			
			int userId = 0;
			try {
				stmt = con.createStatement();
				
				ResultSet rs = stmt.executeQuery(findUserID);

				if (rs.next()) {				
					userId = rs.getInt(1);
				}
			

			} catch (SQLException e) {

				e.printStackTrace();
			}
			return userId;

		}
		
		

      public  void updatePassword(String newPassword, String emailId) {
				String updateQuery = "update user_details set password =?  where Email_id=?";
				try {
				Connection con = ConnectionUtil.getDbConnection();
				PreparedStatement pstmt = con.prepareStatement(updateQuery);
				pstmt.setString(1, newPassword);
				pstmt.setString(2, emailId);
				
				pstmt.executeUpdate();
				
				pstmt.close();
				con.close();
				}catch(SQLException e) {
					
					e.printStackTrace();
				}
				
			}

      public  void inactiveUser(String emailId) {
			String updateQuery = "update user_details set role ='Inactive' where Email_id=?";
			try {
			Connection con = ConnectionUtil.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement(updateQuery);			
			pstmt.setString(1, emailId);
			
			 pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
			}catch(SQLException e) {
				
				e.printStackTrace();
			}
			
		}
      
      public  int editUser(String name,String email,String address,double wallet,int userId) {
			String updateQuery = "update user_details set user_name=?,email_id=?,address=?,user_wallet=? where user_id=?";
			try {
			Connection con = ConnectionUtil.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement(updateQuery);	
			pstmt.setString(1,name);
			pstmt.setString(2,email);			
			pstmt.setString(3,address);	
			pstmt.setDouble(4, wallet);
			pstmt.setInt(5, userId);			
		    pstmt.executeUpdate();			
			pstmt.close();
			con.close();
			 return 1;
			
			}catch(SQLException e) {
				
				e.printStackTrace();
			}
			return 1;
			
		}




			
			
		
			
		
	

}