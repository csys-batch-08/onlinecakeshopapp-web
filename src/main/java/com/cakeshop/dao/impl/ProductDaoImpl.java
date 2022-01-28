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

//show product method

	public List<Products> showProduct() {
		List<Products> cakelist = new ArrayList<>();

		String showQuery = "select cake_id,cake_name,cake_description,cake_price,category_name,rating,picture from product_details";
		Connection con = ConnectionUtil.getDbConnection();

		try {
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(showQuery);
			while (rs.next()) {

				Products cake = new Products();
				cake.setCakeId(rs.getInt(1));
				cake.setCakeName(rs.getString(2));
				cake.setCakeDescription(rs.getString(3));
				cake.setCakePrice(rs.getInt(4));
				cake.setCategoryName(rs.getString(5));
				cake.setRating(rs.getDouble(6));
				cake.setPicture(rs.getString(7));

				cakelist.add(cake);
				
			}
			 } catch (SQLException e) {
			
			e.printStackTrace();
		}
		return cakelist;
	}

//add new product

	public void insertProduct(Products product) {
		String insertQuery = "insert into product_details(cake_name,cake_description,cake_price,category_name,picture) values(?,?,?,?,?)";

		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement pst = null;

		try {
			pst = con.prepareStatement(insertQuery);
			pst.setString(1, product.getCakeName());
			pst.setString(2, product.getCakeDescription());
			pst.setInt(3, product.getCakePrice());
			pst.setString(4, product.getCategoryName());
			pst.setString(5, product.getPicture());

			pst.executeUpdate();

		} catch (SQLException e) {
			
			e.printStackTrace();

		}

	}

//update product
	public void updateProduct(double cakePrice, String cakeName) {
		String updateQuery = "update product_details set cake_price =?  where cake_name=?";

		try {
			Connection con = ConnectionUtil.getDbConnection();
			PreparedStatement pstmt = con.prepareStatement(updateQuery);
			pstmt.setDouble(1, cakePrice);
			pstmt.setString(2, cakeName);
			 pstmt.executeUpdate();

			pstmt.close();
			con.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}

//rating insert 
	public void insertRating(int insertRating) {

		String updateQuery = "update product_details set Ratings=? where cake_name=?";

		Connection con = ConnectionUtil.getDbConnection();
		try {
			PreparedStatement pstmt = con.prepareStatement(updateQuery);

			pstmt.executeUpdate();
			
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			
			e.printStackTrace();
		}

	}

//delete method

	public void deleteProduct(int cakeId) {
		String deleteQuery = "delete from product_details where cake_id=?";

		Connection con = ConnectionUtil.getDbConnection();
		try {
			PreparedStatement pstmt = con.prepareStatement(deleteQuery);
			pstmt.setInt(1, cakeId);
			pstmt.executeUpdate();

			pstmt.close();
			con.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

//find product id	

	public int findProductId1(String productName) {
		String query = "select cake_id from product_details where cake_name='" + productName + "'";

		Connection con = ConnectionUtil.getDbConnection();
		Statement stmt;
		int proId = 0;
		try {
			stmt = con.createStatement();

			ResultSet rs = stmt.executeQuery(query);

			if (rs.next()) {
				proId = rs.getInt(1);
			}

		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return proId;
	}

//find Product Price	

	public int findPrice(int proID) {
		String query = "select total_price from product_details where cake_id=?";

		Connection con = ConnectionUtil.getDbConnection();	
		try {
			PreparedStatement prepare =con.prepareStatement(query) ;
			prepare.setInt(1, proID);		

		} catch (SQLException e) {
		
			e.printStackTrace();
		}

		return 0;

	}

//find product category 

	public List<Products> findCategory(String categoryName) {

		List<Products> category = new ArrayList<>();

		String showQuery = "select cake_id,cake_name,cake_description,cake_price,category_name,rating,picture from product_details where category_name=?";
		Connection con = ConnectionUtil.getDbConnection();
		
		PreparedStatement prepare = null ;
		try {		    
			@SuppressWarnings("null")
			ResultSet rs = prepare.executeQuery(showQuery);

		} catch (SQLException e) {
			
			e.printStackTrace();
		}

		return category;
	}

//show product rating	

	public List<Products> ShowRating() {
		List<Products> ratinglist=new ArrayList<>();
		String query = "select cake_name,rating,rating_count from product_details order by rating desc";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs = null;
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Products cake = new Products();				
				cake.setCakeName(rs.getString(1));
				cake.setRating(rs.getDouble(2));							
				ratinglist.add(cake);
			}
		} catch (SQLException e) {		
			e.printStackTrace();
		}
		return ratinglist;
	}

// product Category List

	public List<Products> ShowCategory() {
		List<Products> category = new ArrayList<>();

		String query = "select DISTINCT category_name from product_details";

		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs = null;
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement(query);
			rs = stmt.executeQuery();
			
			while (rs.next()) {
				Products cake = new Products();
				
				cake.setCategoryName(rs.getString(1));
				
				category.add(cake);
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return category;

	}

//category wise product List

	public List<Products> viewCategoryList(String categoryname) {
		
		List<Products> viewCategory=new ArrayList<>();

		String query = "select cake_id,cake_name,cake_description,cake_price,category_name,rating,picture from product_details where category_name=?";

		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement stmt;

		ResultSet rs = null;
		try {

			stmt = con.prepareStatement(query);
			
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
			
			e.printStackTrace();
		}
		return viewCategory ;

	}

//product filter by price 	
	public List<Products> filterPrice(int min, int max) {
		
		List<Products> pricelist=new ArrayList<>();
		
		String query = "select cake_id,cake_name,cake_description,cake_price,category_name,rating,picture from product_details where cake_price between ? and ? ";

		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement stmt;
		ResultSet rs = null;
		try {

			stmt = con.prepareStatement(query);
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
			
			e.printStackTrace();
		}
		return pricelist;

	}

}
