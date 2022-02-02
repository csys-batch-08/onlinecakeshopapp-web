package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.UserDaoImpl;


@WebServlet("/Inactive")
public class InactiveUser extends HttpServlet {	 
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		UserDaoImpl userDao=new UserDaoImpl();
		
		String email=request.getParameter("Email");
		
		boolean validate=userDao.checkEmail(email);
		if(validate) {
			
		
		
		try {
			userDao.inactiveUser(email);
			response.sendRedirect("admin.jsp");
		} catch (SQLException e) {

			e.getMessage();
		}
		
		}
		else {
		 request.setAttribute("invalidEmail", "invalid");
		 RequestDispatcher rd=request.getRequestDispatcher("inactiveUser.jsp");
		 rd.forward(request, response);
		 
		}
	
		
		
	}

}
