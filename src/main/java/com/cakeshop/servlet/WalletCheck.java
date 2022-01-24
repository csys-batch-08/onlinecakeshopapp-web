package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.WalletDaoImpl;


@WebServlet("/walletcheck")
public class WalletCheck extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		HttpSession session=request.getSession();
		
		String UserName=session.getAttribute("CurrentUser1").toString();	
		System.out.println("userName"+UserName);
	
		WalletDaoImpl WalletCheck=new WalletDaoImpl();
		
		WalletCheck.rechargeWallet(UserName);
		
		response.sendRedirect("showProduct.jsp");
		
		
		
		
		
		
		
		
	}

}
