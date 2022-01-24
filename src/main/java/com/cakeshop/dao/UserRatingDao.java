package com.cakeshop.dao;

import java.sql.ResultSet;

public interface UserRatingDao {

	public void updateRating(double rating,int proId,int count);

	public ResultSet findRating(String proName);
}
