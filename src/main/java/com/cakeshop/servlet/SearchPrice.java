package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.model.Products;


@WebServlet("/SearchPrice")
public class SearchPrice extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int fromPrice=Integer.parseInt(request.getParameter("fromPrice"));
		int toPrice=Integer.parseInt(request.getParameter("toPrice"));	
				
		ProductDaoImpl productDao=new ProductDaoImpl();
		List<Products> viewProducts;
		try {
			viewProducts = productDao.filterPrice(fromPrice,toPrice);
			request.setAttribute("fromprice", fromPrice);
			request.setAttribute("toprice", toPrice);
				request.setAttribute("showproduct", viewProducts);
				
			RequestDispatcher rd = request.getRequestDispatcher("ShowPriceWise.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {
			
			e.getMessage();
		}
		
	
			
		
	
	}

}
