package com.cakeshop.servlet;

import java.io.IOException;
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

		int cId = Integer.parseInt(session.getAttribute("cakeId").toString());
		
	
		double oldRating = 0;
		int count = 0;
		try {							
				
			oldRating=(double)session.getAttribute("Rating");
			
			
			count=(int)session.getAttribute("ratingcount");
			
			count = count + 1;
			double rating = (oldRating + newRating);
			
			
			userRatingDao.updateRating(rating, cId, count);
			response.sendRedirect("ratingsuccess.jsp");
		}
			catch (SQLException e) {
				e.getMessage();
			}
		
	
		
		
	}
		

}
