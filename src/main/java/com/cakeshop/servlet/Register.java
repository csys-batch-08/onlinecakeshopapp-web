package com.cakeshop.servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//import org.apache.catalina.User;

import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.model.*;

@WebServlet("/Register")

public class Register extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		
		PrintWriter pw=response.getWriter();
		
		String userName=request.getParameter("userName");
		String EmailId=request.getParameter("EmailId");	
		String password=request.getParameter("password");
		String address=request.getParameter("address");		
		
		session.setAttribute("UserName",userName);
		session.setAttribute("Password",password);
		session.setAttribute("address",address);
			
		
	    UserDaoImpl userDao=new UserDaoImpl();	    
	   
	    
	    com.cakeshop.model.User user1=  new com.cakeshop.model.User(userName,EmailId,password,address);    
	    
	
	   userDao.insertUser(user1);
		
		response.sendRedirect("Login.jsp");
		
		
	}

}
