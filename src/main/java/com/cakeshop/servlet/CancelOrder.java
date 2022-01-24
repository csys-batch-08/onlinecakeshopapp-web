package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;

/**
 * Servlet implementation class CancelOrder
 */
@WebServlet("/cancelOrder")
public class CancelOrder extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        HttpSession session=request.getSession();			
		
		int userId=Integer.parseInt(session.getAttribute("userId").toString());
				
		
		WalletDaoImpl walletDao=new WalletDaoImpl();
	
		double wallbal=walletDao.walletbal(userId);	
	
		String userName=session.getAttribute("CurrentUser1").toString();
		
		int cartId=Integer.parseInt(request.getParameter("cartId"));
		
		System.out.println(cartId);
		System.out.println(userName);
		
		walletDao.WalletRefund(userName, cartId,wallbal);
		CartDaoImpl cartDao=new CartDaoImpl();	
		
		cartDao.deleteCart(userId);
		response.sendRedirect("deleted.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session=request.getSession();		
				
		int userId=Integer.parseInt(session.getAttribute("userId").toString());
				
		WalletDaoImpl walletDao=new WalletDaoImpl();
	
		double wallbal=walletDao.walletbal(userId);	
	
		String userName=session.getAttribute("CurrentUser1").toString();
		
		int cartId=Integer.parseInt(request.getParameter("cartId"));
		
		System.out.println(cartId);
		System.out.println(userName);
		
		walletDao.WalletRefund(userName, cartId,wallbal);
		CartDaoImpl cartDao=new CartDaoImpl();	
		
		cartDao.deleteCart(userId);
		response.sendRedirect("deleted.jsp");
				
		
	}

}
