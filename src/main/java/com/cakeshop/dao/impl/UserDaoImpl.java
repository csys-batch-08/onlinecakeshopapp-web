package com.cakeshop.dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.cakeshop.dao.UserDao;
import com.cakeshop.model.User;


public class UserDaoImpl implements UserDao{

	
	@Override
	public void insertUser(User user) throws SQLException {
			String insertQuery = "insert into user_details(user_name,email_id,password,address) values(?,?,?,?)";
			 
			PreparedStatement pst = null;
			Connection con=null;
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
				
				if(pst!=null) {
					pst.close();
				}			
				if(con!=null) {
					con.close();
				}
		 }
				
		}

	
	@SuppressWarnings({ "resource", "null" })
	@Override
		public  User validateUser(String emailId, String password) throws SQLException {
			String validateQuery = "select * from user_details where Email_id='" + emailId 
					+ "'and password='" + password + "'";

			Connection con=null;
			User user = null;
			
			PreparedStatement pst=null;
			try {
				 pst = con.prepareStatement(validateQuery);
				con = ConnectionUtil.getDbConnection();
				
				ResultSet rs = pst.executeQuery();
				if (rs.next()) {
					
					user = new User(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), 
							rs.getString(5),rs.getString(6),rs.getDouble(7));
					return user;
				}		
				
			} catch (SQLException e) {

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

	
		
@Override		
		public  List<User> showAllUser() throws SQLException {		
	        List<User> userlist=new ArrayList<>();
	        
			Connection con=null;

			String selectQuery = "select user_id,user_name,email_id,password,address,role,user_wallet from user_details where role not in 'Admin'";
			Statement pst=null;
			ResultSet rs=null;	
			try {
				con = ConnectionUtil.getDbConnection();
				 pst = con.createStatement();
				 rs = pst.executeQuery(selectQuery);
				 
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
			}finally {
				
				if(pst!=null) {
					pst.close();
				}			
				if(con!=null) {
					con.close();
				}
		 }

			return userlist;
		}		




        @Override
		public void deletedetails(String delete) throws SQLException  {
			String deleteQuery = "delete from user_details where Email_id=?";
			PreparedStatement pstmt=null;
			Connection con=null;
			try {
				con = ConnectionUtil.getDbConnection();
			 pstmt = con.prepareStatement(deleteQuery);
			pstmt.setString(1, delete);
			 pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
			}catch (SQLException e) {
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
		}

	
@Override
		public  int findUserId(String userName) throws SQLException {
			
			String findUserID = "select user_id from user_details where email_id='"+userName+"'";
			Connection con=null;
			Statement stmt = null;
			
			int userId = 0;
			try {
				 con = ConnectionUtil.getDbConnection();
				stmt = con.createStatement();
				
				ResultSet rs = stmt.executeQuery(findUserID);

				if (rs.next()) {				
					userId = rs.getInt(1);
				}
			

			} catch (SQLException e) {

				e.getMessage();
			}
               finally {
				
				if(stmt!=null) {
					stmt.close();
				}			
				if(con!=null) {
					con.close();
				}
		 }
			return userId;

		}
		
		

      public  void updatePassword(String newPassword, String emailId) throws SQLException {
				String updateQuery = "update user_details set password =?  where Email_id=?";
				
				PreparedStatement pstmt =null;
				Connection con =null;
				try {
			     con = ConnectionUtil.getDbConnection();
				 pstmt = con.prepareStatement(updateQuery);
				pstmt.setString(1, newPassword);
				pstmt.setString(2, emailId);
				
				pstmt.executeUpdate();
				
				pstmt.close();
				con.close();
				}catch(SQLException e) {
					
					e.getMessage();
				}   finally {
					
					if(pstmt!=null) {
						pstmt.close();
					}			
					if(con!=null) {
						con.close();
					}
			 }
				
			}

      public  void inactiveUser(String emailId) throws SQLException {
			String updateQuery = "update user_details set role ='Inactive' where Email_id=?";
			
			PreparedStatement pstmt=null;
			Connection con =null;
			try {
		 con = ConnectionUtil.getDbConnection();
			 pstmt = con.prepareStatement(updateQuery);			
			pstmt.setString(1, emailId);
			
			 pstmt.executeUpdate();
			
			pstmt.close();
			con.close();
			}catch(SQLException e) {
				
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
			
		}
      
      public  int editUser(String name,String email,String address,double wallet,int userId) throws SQLException {
			String updateQuery = "update user_details set user_name=?,email_id=?,address=?,user_wallet=? where user_id=?";
			PreparedStatement pstmt=null;
			Connection con =null;
			try {
			 con = ConnectionUtil.getDbConnection();
			 pstmt = con.prepareStatement(updateQuery);	
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
			return 1;
			
		}




			
			
		
			
		
	

}