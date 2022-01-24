package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.UserRatingDaoImpl;

/**
 * Servlet implementation class Rating
 */
@WebServlet("/Rating")
public class Rating extends HttpServlet {	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		HttpSession session=request.getSession();
		
		int newRating=Integer.parseInt(request.getParameter("Rating"));
		UserRatingDaoImpl UserRatingDao=new UserRatingDaoImpl();
		int c_id=Integer.parseInt(session.getAttribute("cake_id").toString());
		String cakeName=(String) session.getAttribute("cakename");
		
		ResultSet rs= UserRatingDao.findRating(cakeName);
		int oldRating=0;
		int count=0;
		try {
			while(rs.next()) {
			oldRating = rs.getInt(1);
			count=rs.getInt(2);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    count=count+1;
		double rating=(oldRating+newRating);			
		System.out.println(rating);
	//	System.out.println(count);
	
		UserRatingDao.updateRating(rating,c_id,count);
		response.sendRedirect("Ratingsuccess.jsp");
		
				
		
		
	}

}
