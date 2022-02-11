package com.cakeshop.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.HelpDaoImpl;
import com.cakeshop.model.Help;

@WebServlet("/contactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HelpDaoImpl helpDao = new HelpDaoImpl();
		List<Help> contact;
		try {
			contact = helpDao.showHelp();

			request.setAttribute("contact", contact);

			RequestDispatcher rd = request.getRequestDispatcher("contact.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {

			e.getMessage();
		}

	}

}
