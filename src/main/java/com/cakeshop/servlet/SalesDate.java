package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.model.Cart;

/**
 * Servlet implementation class SalesDate
 */
@WebServlet("/salesWiseFilter")
public class SalesDate extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		HttpSession session=request.getSession();	
		
		String fromDate=request.getParameter("FromDate");
		LocalDate FromDate=LocalDate.parse(fromDate);
		
		String ToDate=request.getParameter("ToDate");
		LocalDate toDate=LocalDate.parse(ToDate);
			
		
		CartDaoImpl cartDao =new CartDaoImpl();		
		List<Cart> cartlist=cartDao.filterSales(FromDate, toDate);
				
		
		if(cartlist!=null) {				
			RequestDispatcher rd = request.getRequestDispatcher("ShowSales.jsp");
			rd.forward(request, response);
			request.setAttribute("SalesList", cartlist);
			
		}		
		else {
			response.sendRedirect("SalesDate.jsp");
		}
		
		
		
		
		
		
	}

}
