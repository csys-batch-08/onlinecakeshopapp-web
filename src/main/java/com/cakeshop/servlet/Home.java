package com.cakeshop.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.model.Products;


@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProductDaoImpl proDao = new ProductDaoImpl();

		List<Products> productsList = proDao.showProduct();
		for (int i = 0; i < productsList.size(); i++) {
			
		}

		HttpSession session = request.getSession();
		session.setAttribute("productsList", productsList);
		response.sendRedirect("Home.jsp");

		doGet(request, response);
	}

}
