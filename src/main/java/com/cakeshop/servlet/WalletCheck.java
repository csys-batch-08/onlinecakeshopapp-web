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
	
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		HttpSession session=request.getSession();
		
		String userName=session.getAttribute("CurrentUser1").toString();	
		
	
		WalletDaoImpl walletCheck=new WalletDaoImpl();
		
		walletCheck.rechargeWallet(userName);
		
		response.sendRedirect("showProduct.jsp");
		
		
		
		
		
		
		
		
	}

}
