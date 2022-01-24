package com.cakeshop.servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.AdminDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;
import com.cakeshop.exception.InvalidUserException;
import com.cakeshop.exception.LowBalanceException;
import com.cakeshop.model.User;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub		

		PrintWriter pw = response.getWriter();
		HttpSession session=request.getSession();
		String EmailId = request.getParameter("EmailId");
		String password = request.getParameter("password");
		
		session.setAttribute("EmailId", EmailId);
		session.setAttribute("password", password);	
		
		UserDaoImpl userDao = new UserDaoImpl();
		User currentUser = userDao.validateUser(EmailId, password);
		
		
		if(currentUser!=null) {
		UserDaoImpl user=new UserDaoImpl();
		
		int userId=currentUser.getUserId();
		session.setAttribute("userId", userId);
		
		session.setAttribute("CurrentUser",currentUser);
		session.setAttribute("CurrentUser", currentUser.getEmailId());
		
		String userRole=currentUser.getRole();
				
		if (userRole.equals("Admin")) {
			
			AdminDaoImpl admin=new AdminDaoImpl();
			admin.validateAdmin(EmailId, password);
			response.sendRedirect("admin.jsp");
			
			
		} else if (userRole.equals("user")) {
			
			session.setAttribute("CurrentUser1", currentUser.getUserName());
			
			session.setAttribute("CurrentUser1", currentUser.getUserName());
		
			WalletDaoImpl WalletBal=new WalletDaoImpl();
			int WalletBal1=WalletBal.walletbal(userId);
						
			if(WalletBal1>1000) {			
			 response.sendRedirect("showProduct.jsp");			
			
			}else {
				try {
				throw new LowBalanceException();
				}catch(LowBalanceException e) {
					response.sendRedirect(e.getMessage());
				}
			}
		}
		else {
			try {
				
				throw new InvalidUserException();
			
				}catch(InvalidUserException e) {
					session.setAttribute("Invalid",e.getMessage());
					response.sendRedirect("Login.jsp");
				}
			
		}
	}		
		else{
			try {
				
			throw new InvalidUserException();
		
			}catch(InvalidUserException e) {
				session.setAttribute("Invalid",e.getMessage());
				response.sendRedirect("Login.jsp");
			}
		}

	}

}
