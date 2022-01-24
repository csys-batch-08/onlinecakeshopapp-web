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

	public ResultSet showProduct() {
		String showQuery = "select * from product_details";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs = null;
		try {
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(showQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}

//add new product

	public void insertProduct(Products product) {
		String insertQuery = "insert into product_details(cake_name,cake_description,cake_price,category_name,picture) values(?,?,?,?,?)";

		ConnectionUtil conUtil = new ConnectionUtil();
		Connection con = conUtil.getDbConnection();
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
			// TODO Auto-generated catch block
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
			int i = pstmt.executeUpdate();

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
			System.out.println("Rating  added thank you!!");
			pstmt.close();
			con.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
			int i = pstmt.executeUpdate();

			pstmt.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return proId;
	}

//find Product Price	

	public ResultSet findPrice(int proID) {
		String query = "select * from product_details where cake_id='" + proID + "'";

		Connection con = ConnectionUtil.getDbConnection();
		Statement stmt;

		ResultSet rs = null;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;

	}

//find product category 

	public ResultSet findCategory(String categoryName) {

		String showQuery = "select * from product_details where category_name='" + categoryName + "'";
		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs = null;
		try {
			Statement stmt = con.createStatement();
			rs = stmt.executeQuery(showQuery);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}

//show product rating	

	public ResultSet ShowRating() {

		String query = "select cake_name,rating,rating_count from product_details order by rating desc";

		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs = null;
		Statement stmt;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;
	}

// product Category List

	public ResultSet ShowCategory() {

		String query = "select DISTINCT category_name from product_details";

		Connection con = ConnectionUtil.getDbConnection();
		ResultSet rs = null;
		Statement stmt;
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;

	}

//category wise product List

	public ResultSet viewCategoryList(String categoryname) {
		String query = "select * from product_details where category_name=?";

		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement stmt;

		ResultSet rs = null;
		try {

			stmt = con.prepareStatement(query);
			stmt.setString(1, categoryname);
			rs = stmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;

	}

//product filter by price 	
	public ResultSet filterPrice(int min, int max) {
		String query = "select * from product_details where cake_price between ? and ? ";

		Connection con = ConnectionUtil.getDbConnection();
		PreparedStatement stmt;
		ResultSet rs = null;
		try {

			stmt = con.prepareStatement(query);
			stmt.setInt(1, min);
			stmt.setInt(2, max);
			rs = stmt.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return rs;

	}

}
