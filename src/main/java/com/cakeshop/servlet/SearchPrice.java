package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.exception.InvalidPriceException;
import com.cakeshop.exception.InvalidUserException;
import com.cakeshop.model.Products;

/**
 * Servlet implementation class SearchPrice
 */
@WebServlet("/SearchPrice")
public class SearchPrice extends HttpServlet {
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session=request.getSession();
		
		int FromPrice=Integer.parseInt(request.getParameter("fromPrice"));
		int ToPrice=Integer.parseInt(request.getParameter("toPrice"));	
				
		ProductDaoImpl productDao=new ProductDaoImpl();
		List<Products> viewProducts =productDao.filterPrice(FromPrice,ToPrice);
		
		request.setAttribute("fromprice", FromPrice);
		request.setAttribute("toprice", ToPrice);
			request.setAttribute("showproduct", viewProducts);
			
		RequestDispatcher rd = request.getRequestDispatcher("ShowPriceWise.jsp");
		rd.forward(request, response);
			
		
	
	}

}
