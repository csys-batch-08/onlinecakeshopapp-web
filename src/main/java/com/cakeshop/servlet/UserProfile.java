package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.model.User;


@WebServlet("/UserProfile")
public class UserProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//String Email=session.getAttribute("EmailId").toString();
		//String password=session.getAttribute("password").toString();
		
		String EmailId = request.getParameter("EmailId");
		String password = request.getParameter("password");
				
		UserDaoImpl userDao = new UserDaoImpl();
		User user = userDao.validateUser(EmailId, password);
		
		String email=user.getEmailId();
		request.setAttribute("email", email);
		
		String UserName=user.getUserName();
		request.setAttribute("UserName",UserName);
		String address=user.getAddress();
		request.setAttribute("address", address);		
		double Wallet=user.getWallet();
		request.setAttribute("wallet", Wallet);
		
	}

}
