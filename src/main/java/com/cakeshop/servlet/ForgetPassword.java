package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.UserDaoImpl;


@WebServlet("/forgetPassword")
public class ForgetPassword extends HttpServlet {	
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		UserDaoImpl userDao=new UserDaoImpl();
		
		String password=request.getParameter("password");
		String emailId=request.getParameter("emailId");
		
		try {
			userDao.updatePassword(password,emailId);
			response.sendRedirect("login.jsp");
		} catch (SQLException e) {

			e.getMessage();
		}
		
		
				
		
	}

}
