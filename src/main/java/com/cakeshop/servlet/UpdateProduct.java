package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.ProductDaoImpl;


@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		ProductDaoImpl productDao=new ProductDaoImpl();
		String cakename=request.getParameter("cakeName");
		double cakeprice=Double.parseDouble(request.getParameter("cakePrice"));
		
		try {
			productDao.updateProduct(cakeprice,cakename);
			
			response.sendRedirect("admin.jsp");
		} catch (SQLException e) {
			
			e.printStackTrace();
		}	
	
		
		
	}

}
