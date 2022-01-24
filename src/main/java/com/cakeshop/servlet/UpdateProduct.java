package com.cakeshop.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.ProductDaoImpl;


@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		ProductDaoImpl productDao=new ProductDaoImpl();
		String cakename=request.getParameter("cakeName");
		double cakeprice=Double.parseDouble(request.getParameter("cakePrice"));
		
		productDao.updateProduct(cakeprice,cakename);	
		
		response.sendRedirect("admin.jsp");
		
		
	}

}
