package com.cakeshop.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.model.Cart;

@WebServlet("/salesWiseFilter")
public class SalesDate extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String fromDate = request.getParameter("FromDate");
		LocalDate fromdate = LocalDate.parse(fromDate);

		String toDate = request.getParameter("ToDate");
		LocalDate todate = LocalDate.parse(toDate);

		CartDaoImpl cartDao = new CartDaoImpl();
		List<Cart> cartlist;
		try {
			cartlist = cartDao.filterSales(fromdate, todate);
			if (cartlist != null) {
				request.setAttribute("SalesList", cartlist);
				RequestDispatcher rd = request.getRequestDispatcher("showSales.jsp");
				rd.forward(request, response);

			} else {
				response.sendRedirect("salesDate.jsp");
			}
		} catch (SQLException e) {

			e.getMessage();
		}

	}

}
