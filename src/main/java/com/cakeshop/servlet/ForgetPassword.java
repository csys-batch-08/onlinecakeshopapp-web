package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.UserDaoImpl;

/**
 * Servlet implementation class forgetPassword
 */
@WebServlet("/forgetPassword")
public class ForgetPassword extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		UserDaoImpl userDao=new UserDaoImpl();
		
		String password=request.getParameter("password");
		String emailId=request.getParameter("emailId");
		
		userDao.updatePassword(password,emailId);
		
		response.sendRedirect("Login.jsp");
		
			
		
	}

}
