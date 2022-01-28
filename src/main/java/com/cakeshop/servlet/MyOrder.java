package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.model.Cart;


@WebServlet("/MyOrders")
public class MyOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;       
   
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
        int userId=Integer.parseInt(session.getAttribute("userId").toString());
        
        CartDaoImpl cartDao=new CartDaoImpl();
        
        List<Cart> cartList=cartDao.viewUserCart(userId);
        request.setAttribute("viewOrder", cartList);        
        
        String emailId=session.getAttribute("CurrentUser").toString();
        request.setAttribute("userName", emailId);
		
		
 }

}
