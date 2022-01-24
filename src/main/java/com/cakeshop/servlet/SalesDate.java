package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CartDaoImpl;

/**
 * Servlet implementation class SalesDate
 */
@WebServlet("/salesWiseFilter")
public class SalesDate extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();
		System.out.println("servlet");
		
		String fromDate=request.getParameter("FromDate");
		LocalDate FromDate=LocalDate.parse(fromDate);
		
		String ToDate=request.getParameter("ToDate");
		LocalDate toDate=LocalDate.parse(ToDate);
		
		System.out.println("hiii");
		System.out.println(toDate);		
		System.out.println(FromDate);
		
		CartDaoImpl cartDao =new CartDaoImpl();		
		ResultSet rs=cartDao.filterSales(FromDate, toDate);
		
		if(rs!=null) {
			response.sendRedirect("ShowSales.jsp");
			session.setAttribute("SalesList", rs);
		}
		else {
			response.sendRedirect("SalesDate.jsp");
		}
		
		
		
		
		
		
	}

}
