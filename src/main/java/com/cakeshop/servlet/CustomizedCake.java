package com.cakeshop.servlet;

import java.io.IOException;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.SpecialCakeDaoImpl;
import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;
import com.cakeshop.model.SpecialCake;

/**
 * Servlet implementation class customized
 */
@WebServlet("/customized")
public class CustomizedCake extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		HttpSession session=request.getSession();	
		String flavour=request.getParameter("flavour");		
		
		session.setAttribute("flavour", flavour);
		
		String type=request.getParameter("type");
		
		session.setAttribute("type", type);
		
		String size=request.getParameter("size");	
		
		session.setAttribute("size", size);
		
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		
		System.out.println("quantity="+quantity);
		
		String orderdate=request.getParameter("orderdate");
		LocalDate Orderdate=LocalDate.parse(orderdate);
		
        String userName=(String) session.getAttribute("CurrentUser");
		
		UserDaoImpl userDao=new UserDaoImpl();
		//int userId=userDao.findUserId(userName);
		
		int userId=(int)session.getAttribute("userId");
		
		System.out.println("userid"+userId);
		
			
		
		double totalPrice=(1000*quantity);	
		
		session.setAttribute("totalPrice", totalPrice);
		
		//System.out.println("totalprice="+totalPrice);		
		
		WalletDaoImpl walletDao=new WalletDaoImpl();
		
		int userWallet=walletDao.walletbal(userId);				
		
		double wallbal=userWallet -totalPrice;
		
		session.setAttribute("wallbal",wallbal );
		
		//System.out.println("wallbalance="+wallbal);
		
		walletDao.updatewallet(wallbal,userId);		 
						
		SpecialCake customized=new SpecialCake(userId, flavour,type,size,quantity,Orderdate);
		
		SpecialCakeDaoImpl Customized =new SpecialCakeDaoImpl();
		
		Customized.insertCake(customized);			
		
		response.sendRedirect("OrderCustomized.jsp");
		
		
	}

}
