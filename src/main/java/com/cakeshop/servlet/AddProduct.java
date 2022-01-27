package com.cakeshop.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.model.Products;

//@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		ProductDaoImpl proDao=new ProductDaoImpl();	   
		String cake_name=request.getParameter("cakeName");
		String cake_description=request.getParameter("cakeDescription");	
		int cake_price=Integer.parseInt(request.getParameter("cakePrice"));
		String category_name=request.getParameter("categoryName");
		String image=request.getParameter("picture");
		 
		
		Products product=new Products(cake_price, cake_name,cake_description,cake_price,category_name,cake_price, image);	    		
	    proDao.insertProduct(product);
		
	   
	    response.sendRedirect("admin.jsp");
	    
		doGet(request, response);
	}

}
