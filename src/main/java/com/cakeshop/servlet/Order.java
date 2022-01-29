package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cakeshop.dao.impl.UserDaoImpl;

@WebServlet("/order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
		
		int productId=Integer.parseInt(request.getParameter("cakeId")); 
						
		request.setAttribute("cakeId",productId);
		
		session.setAttribute("cakeId",productId);
		
		String cname=request.getParameter("cakeName");
		
		session.setAttribute("cakename", cname);
		
		request.setAttribute("cakeName", cname);				
		
		int price=Integer.parseInt(request.getParameter("cakePrice"));

		request.setAttribute("price", price);		
		
		String userName=(String)session.getAttribute("CurrentUser1");	
		
		UserDaoImpl userDao =new UserDaoImpl();    
		int userId;
		try {
			userId = userDao.findUserId(userName);
			session.setAttribute("UserId", userId);		
			
			RequestDispatcher rd = request.getRequestDispatcher("order.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {

			e.getMessage();
		}
	
		
	}

}
