package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.model.Products;


@WebServlet("/ShowRating")
public class ShowRating extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	   
	   ProductDaoImpl product=new ProductDaoImpl();
	   List<Products> rating;
	try {
		rating = product.showRating();
		  request.setAttribute("ratinglist", rating);
		   
		   Products products=new Products();

	      DecimalFormat df = new DecimalFormat("0.00");
	      double rating1=products.getRating()/products.getRatingCount();
	       double ratings=Double.parseDouble(df.format(rating1));
	      
	      request.setAttribute("ratings", ratings);
		   
		  RequestDispatcher rd = request.getRequestDispatcher("showRating.jsp");
		  rd.forward(request, response);
		   
	} catch (SQLException e) {

		e.getMessage();
	}
	   
	 
   }

}
