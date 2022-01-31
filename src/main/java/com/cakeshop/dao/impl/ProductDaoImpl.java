package com.cakeshop.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;
import java.sql.Statement;

import java.util.ArrayList;
import java.util.List;

import com.cakeshop.dao.ProductDao;
import com.cakeshop.model.Products;

public class ProductDaoImpl implements ProductDao {



	public List<Products> showProduct() throws SQLException {
		List<Products> cakelist = new ArrayList<>();

		String showQuery = "select cake_id,cake_name,cake_description,cake_price,category_name,rating,picture,rating_count from product_details";
		Connection con=null;
		Statement stmt=null;
		try {
			con = ConnectionUtil.getDbConnection();
		    stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(showQuery);
			while (rs.next()) {

				Products cake = new Products();
				cake.setCakeId(rs.getInt(1));
				cake.setCakeName(rs.getString(2));
				cake.setCakeDescription(rs.getString(3));
				cake.setCakePrice(rs.getInt(4));
				cake.setCategoryName(rs.getString(5));
				cake.setRatingCount(rs.getInt(8));				
				cake.setRating(rs.getDouble(6)/rs.getInt(8));
				cake.setPicture(rs.getString(7));
				cake.setOldRating(rs.getDouble(6));
				
				cakelist.add(cake);
				
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
		return cakelist;
	}



	public void insertProduct(Products product) throws SQLException {
		String insertQuery = "insert into product_details(cake_name,cake_description,cake_price,category_name,picture) values(?,?,?,?,?)";

		Connection con=null;
		PreparedStatement pst = null;

		try {
			con = ConnectionUtil.getDbConnection();
			pst = con.prepareStatement(insertQuery);
			pst.setString(1, product.getCakeName());
			pst.setString(2, product.getCakeDescription());
			pst.setInt(3, product.getCakePrice());
			pst.setString(4, product.getCategoryName());
			pst.setString(5, product.getPicture());

			pst.executeUpdate();

		} catch (SQLException e) {
			
			e.getMessage();

		} finally {
			
			if(pst!=null) {
				pst.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}

	}


	public void updateProduct(double cakePrice, String cakeName) throws SQLException {
		String updateQuery = "update product_details set cake_price =?  where cake_name=?";
		PreparedStatement pstmt=null;
		Connection con=null;
		try {
		  con = ConnectionUtil.getDbConnection();
			 pstmt = con.prepareStatement(updateQuery);
			pstmt.setDouble(1, cakePrice);
			pstmt.setString(2, cakeName);
			 pstmt.executeUpdate();

		
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

	}


	public void insertRating(int insertRating) throws SQLException {

		String updateQuery1 = "update product_details set Ratings=? where cake_name=?";
		PreparedStatement pstmt=null;
		Connection con=null;
		try {
			con = ConnectionUtil.getDbConnection();
			 pstmt = con.prepareStatement(updateQuery1);

			pstmt.executeUpdate();
			
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			
			e.getMessage();
		}finally {
			
			if(pstmt!=null) {
				pstmt.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}

	}



	public void deleteProduct(int cakeId) throws SQLException {
		String deleteQuery = "delete from product_details where cake_id=?";
		PreparedStatement pstmt=null;
		Connection con=null;
		try {
			con = ConnectionUtil.getDbConnection();
			 pstmt = con.prepareStatement(deleteQuery);
			pstmt.setInt(1, cakeId);
			pstmt.executeUpdate();

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
		
	}

	public int findProductId1(String productName) throws SQLException {
		String query = "select cake_id from product_details where cake_name=?";

		Connection con=null;
		PreparedStatement stmt=null;
		int proId = 0;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(query);
            stmt.setString(1, productName);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				proId = rs.getInt(1);
			}

		} catch (SQLException e) {
			
			e.getMessage();
		}finally {
			
			if(stmt!=null) {
				stmt.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}

		return proId;
	}
	


	public int findPrice(int proID) throws SQLException {
		String query1 = "select total_price from product_details where cake_id=?";
		PreparedStatement stmt=null;
		Connection con=null;
		try {
			con = ConnectionUtil.getDbConnection();	
			 stmt =con.prepareStatement(query1) ;
			stmt.setInt(1, proID);		

		} catch (SQLException e) {
		
			e.getMessage();
		}finally {
			
			if(stmt!=null) {
				stmt.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}

		return 0;

	}



	public List<Products> findCategory(String categoryName) throws SQLException {

		List<Products> category = new ArrayList<>();

		String showQuery1 = "select cake_id,cake_name,cake_description,cake_price,category_name,rating,picture from product_details where category_name=?";
		Connection con=null;		
		PreparedStatement stmt = null;
		try {		    
			
			con = ConnectionUtil.getDbConnection();
			 stmt =con.prepareStatement(showQuery1);
			 stmt.executeQuery();

		} catch (SQLException e) {
			
			e.getMessage();
		}finally {
			
			if(stmt!=null) {
				stmt.close();
			}
			
			if(con!=null) {
				con.close();
			}
		}

		return category;
	}



	public List<Products> showRating() throws SQLException {
		List<Products> ratinglist=new ArrayList<>();
		String showrating = "select cake_name,rating,rating_count from product_details order by rating desc";
		Connection con=null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(showrating);
			rs = stmt.executeQuery();
			 
			while (rs.next()) {
				Products cake = new Products();				
				cake.setCakeName(rs.getString(1));
				
				cake.setOldRating(rs.getDouble(2)/rs.getInt(3));	    
			     			
				
				ratinglist.add(cake);
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
		return ratinglist;
	}



	public List<Products> showCategory() throws SQLException {
		List<Products> category = new ArrayList<>();

		String showcategory = "select DISTINCT category_name from product_details";

		Connection con=null;
		ResultSet rs = null;
		PreparedStatement stmt = null;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(showcategory);
			rs = stmt.executeQuery();
			
			while (rs.next()) {
				Products cake = new Products();
				
				cake.setCategoryName(rs.getString(1));
				
				category.add(cake);
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
		return category;

	}



	public List<Products> viewCategoryList(String categoryname) throws SQLException {
		
		List<Products> viewCategory=new ArrayList<>();

		String viewQuery = "select cake_id,cake_name,cake_description,cake_price,category_name,rating,picture from product_details where category_name=?";

		Connection con=null;
		PreparedStatement stmt = null;

		ResultSet rs = null;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(viewQuery);
			
			stmt.setString(1, categoryname);
			rs = stmt.executeQuery();
			while(rs.next()) {
				Products cake =new Products();
				cake.setCakeId(rs.getInt(1));
				cake.setCakeName(rs.getString(2));
				cake.setCakeDescription(rs.getString(3));
				cake.setCakePrice(rs.getInt(4));
				cake.setCategoryName(rs.getString(5));
				cake.setRating(rs.getDouble(6));
				cake.setPicture(rs.getString(7));
                
				viewCategory.add(cake);
			}
			
		} catch (SQLException e) {
			
			e.getMessage();
		} finally {
			
			if(stmt!=null) {
				stmt.close();
			}			
			if(con!=null) {
				con.close();
			}
		}
		return viewCategory ;

	}

	
	public List<Products> filterPrice(int min, int max) throws SQLException {
		
		List<Products> pricelist=new ArrayList<>();
		
		String filterprice = "select cake_id,cake_name,cake_description,cake_price,category_name,rating,picture from product_details where cake_price between ? and ? ";

		Connection con=null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			con = ConnectionUtil.getDbConnection();
			stmt = con.prepareStatement(filterprice);
			stmt.setInt(1, min);
			stmt.setInt(2, max);
			rs = stmt.executeQuery();
			
			while (rs.next()) {

				Products cake = new Products();
				cake.setCakeId(rs.getInt(1));
				cake.setCakeName(rs.getString(2));
				cake.setCakeDescription(rs.getString(3));
				cake.setCakePrice(rs.getInt(4));
				cake.setCategoryName(rs.getString(5));
				cake.setRating(rs.getDouble(6));
				cake.setPicture(rs.getString(7));

				pricelist.add(cake);
			}			
		} catch (SQLException e) {
			
			e.getMessage();
		}finally {
			
			if(stmt!=null) {
				stmt.close();
			}			
			if(con!=null) {
				con.close();
			}
		}
		return pricelist;

	}

}
