package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;

import com.cakeshop.exception.InvalidUserException;
import com.cakeshop.model.Cart;

/**
 * Servlet implementation class OrderSuccess
 */
@WebServlet("/Order")
public class OrderSuccess extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();	
		String userName=(String) session.getAttribute("CurrentUser");
		
		UserDaoImpl userDao=new UserDaoImpl();
		int userId=userDao.findUserId(userName);
		
		CartDaoImpl cartDao=new CartDaoImpl();
		
		session.setAttribute("userId", userId);
		
		LocalDate orderDate=null;
		
		 orderDate=LocalDate.parse(request.getParameter("orderDate"));			
		
		int quantity=Integer.parseInt(request.getParameter("quantity"));      
		
			double price1=(double)(session.getAttribute("Price"));	
			
			double totalPrice=(price1*quantity);		
			
			WalletDaoImpl walletDao=new WalletDaoImpl();
			
			int userWallet=walletDao.walletbal(userId);				
			
			 double wallbal=userWallet -totalPrice;
			
		 session.setAttribute("wallbal", wallbal);
		 
		 session.setAttribute("totalprice", totalPrice);
			 
			 walletDao.updatewallet(wallbal,userId);	
			 
			 int cakeId=Integer.parseInt(session.getAttribute("cake_id").toString());
			 
			Cart cart=new Cart(cakeId,userId,quantity,totalPrice,orderDate);
			
			cartDao.insertCart(cart);
					
			response.sendRedirect("OrderSuccess.jsp");		
	
	}

}
