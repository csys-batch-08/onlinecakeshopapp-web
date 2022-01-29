package com.cakeshop.dao;

import java.sql.SQLException;
import java.util.List;

import com.cakeshop.model.Products;

public interface UserRatingDao {

	public void updateRating(double rating,int proId,int count) throws SQLException;

	public List<Products> findRating(String proName) throws SQLException;
}
