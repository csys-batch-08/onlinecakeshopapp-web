package com.cakeshop.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.model.Products;

//@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		ProductDaoImpl proDao=new ProductDaoImpl();	   
		String cakeName=request.getParameter("cakeName");
		String cakeDescription=request.getParameter("cakeDescription");	
		int cakePrice=Integer.parseInt(request.getParameter("cakePrice"));
		String categoryName=request.getParameter("categoryName");
		String image=request.getParameter("picture");
		 
		
		Products product=new Products(0,cakeName,cakeDescription,cakePrice,categoryName,cakePrice, image);	    		
	    proDao.insertProduct(product);
		
	   
	    response.sendRedirect("admin.jsp");
	    
		doGet(request, response);
	}

}
