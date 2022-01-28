package com.cakeshop.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface UserRatingDao {

	public void updateRating(double rating,int proId,int count) throws SQLException;

	public ResultSet findRating(String proName) throws SQLException;
}
