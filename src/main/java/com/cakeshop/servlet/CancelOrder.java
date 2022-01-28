package com.cakeshop.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;


@WebServlet("/cancelOrder")
public class CancelOrder extends HttpServlet {	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
        HttpSession session=request.getSession();			
		
		int userId=Integer.parseInt(session.getAttribute("userId").toString());
				
		
		WalletDaoImpl walletDao=new WalletDaoImpl();
	
		double wallbal=walletDao.walletbal(userId);	
	
		String userName=session.getAttribute("CurrentUser1").toString();
		
		int cartId=Integer.parseInt(request.getParameter("cartId"));
		
		
		walletDao.walletRefund(userName, cartId,wallbal);
		CartDaoImpl cartDao=new CartDaoImpl();	
		
		cartDao.deleteCart(cartId);
		 RequestDispatcher rd = request.getRequestDispatcher("deleted.jsp");
		  rd.forward(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		HttpSession session=request.getSession();		
				
		int userId=Integer.parseInt(session.getAttribute("userId").toString());
				
		WalletDaoImpl walletDao=new WalletDaoImpl();
	
		double wallbal=walletDao.walletbal(userId);	
	
		String userName=session.getAttribute("CurrentUser1").toString();
		
		int cartId=Integer.parseInt(request.getParameter("cartId"));
		
	
		
		walletDao.walletRefund(userName, cartId,wallbal);
		CartDaoImpl cartDao=new CartDaoImpl();	
		
		cartDao.deleteCart(userId);
		 RequestDispatcher rd = request.getRequestDispatcher("deleted.jsp");
		  rd.forward(request, response);
		
				
		
	}

}
