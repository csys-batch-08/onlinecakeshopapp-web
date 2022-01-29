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

@WebServlet("/Rating")
public class Rating extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		int newRating = Integer.parseInt(request.getParameter("Rating"));
		UserRatingDaoImpl userRatingDao = new UserRatingDaoImpl();

		int cId = Integer.parseInt(session.getAttribute("cake_id").toString());
		String cakeName = (String) session.getAttribute("cakename");

		ResultSet rs = null ;
		int oldRating = 0;
		int count = 0;
		try {
			
			
			while (rs.next()) {
				oldRating = rs.getInt(1);
				count = rs.getInt(2);
			}
			
			count = count + 1;
			double rating = (oldRating + newRating);
			
			 userRatingDao.findRating(cakeName);
			userRatingDao.updateRating(rating, cId, count);
			response.sendRedirect("Ratingsuccess.jsp");
		}
			catch (SQLException e) {
				e.getMessage();
			}
		
	
		
		
	}
		

}
