package com.cakeshop.dao;

import java.util.List;

import com.cakeshop.model.Products;

public interface ProductDao {

	public List<Products> showProduct();

	public void insertProduct(Products product);

	public void updateProduct(double cakePrice, String cakeName);

	public void insertRating(int insertRating);

	public void deleteProduct(int cakeId);

	public int findProductId1(String productName);

	public int findPrice(int proID);

	public List<Products> findCategory(String categoryName);
	
	public List<Products> ShowRating();
	
	public List<Products> ShowCategory();
	
	public  List<Products> viewCategoryList(String categoryname);

}
