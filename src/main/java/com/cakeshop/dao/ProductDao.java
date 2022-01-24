package com.cakeshop.dao;

import java.sql.ResultSet;
import java.util.List;

import com.cakeshop.model.Products;

public interface ProductDao {

	public ResultSet showProduct();

	public void insertProduct(Products product);

	public void updateProduct(double cakePrice, String cakeName);

	public void insertRating(int insertRating);

	public void deleteProduct(int cakeId);

	public int findProductId1(String productName);

	public ResultSet findPrice(int proID);

	public ResultSet findCategory(String categoryName);
	
	public ResultSet ShowRating();
	
	public ResultSet ShowCategory();
	
	public  ResultSet viewCategoryList(String categoryname);

}
