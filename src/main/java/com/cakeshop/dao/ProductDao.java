package com.cakeshop.dao;

import java.sql.SQLException;
import java.util.List;

import com.cakeshop.model.Products;

public interface ProductDao {

	public List<Products> showProduct() throws SQLException;

	public void insertProduct(Products product) throws SQLException;

	public void updateProduct(double cakePrice, String cakeName) throws SQLException ;

	public void insertRating(int insertRating) throws SQLException ;

	public void deleteProduct(int cakeId) throws SQLException ;

	public int findProductId1(String productName) throws SQLException ;

	public int findPrice(int proID) throws SQLException ;

	public List<Products> findCategory(String categoryName) throws SQLException ;
	
	public List<Products> showRating() throws SQLException ;
	
	public List<Products> showCategory() throws SQLException ;
	
	public  List<Products> viewCategoryList(String categoryname) throws SQLException ;
	
	public List<Products> filterPrice(int min, int max) throws SQLException;

}
