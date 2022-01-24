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

/**
 * Servlet implementation class home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Home() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ProductDaoImpl proDao = new ProductDaoImpl();

		List<Products> productsList = (List<Products>) proDao.showProduct();
		for (int i = 0; i < productsList.size(); i++) {
			System.out.println(productsList.get(i));

		}

		HttpSession session = request.getSession();
		session.setAttribute("productsList", productsList);
		response.sendRedirect("Home.jsp");

		doGet(request, response);
	}

}
