package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.model.Cart;

/**
 * Servlet implementation class ShowCart
 */
@WebServlet("/ShowCart")
public class ShowCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	   
	   CartDaoImpl cartDao=new CartDaoImpl();
	   List<Cart> cartList = cartDao.viewCart();
	   
	   request.setAttribute("cartlist", cartList);
	   
	   RequestDispatcher rd = request.getRequestDispatcher("showcart.jsp");
		rd.forward(request, response);
	   
	   
	   
	}

}