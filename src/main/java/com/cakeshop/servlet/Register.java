package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cakeshop.dao.impl.UserDaoImpl;

@WebServlet("/Register")

public class Register extends HttpServlet {	
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		
		String userName=request.getParameter("userName");
		String emailId=request.getParameter("EmailId");	
		String password=request.getParameter("password");
		String address=request.getParameter("address");		
		
		session.setAttribute("UserName",userName);
		session.setAttribute("Password",password);
		session.setAttribute("address",address);
			
		
	    UserDaoImpl userDao=new UserDaoImpl();	    
	   
	    
	    com.cakeshop.model.User user1=  new com.cakeshop.model.User(userName,emailId,password,address);    
	    
	
	   try {
		userDao.insertUser(user1);
		response.sendRedirect("Login.jsp");
	} catch (SQLException e) {

		e.getMessage();
	}
		
	
		
		
	}

}
