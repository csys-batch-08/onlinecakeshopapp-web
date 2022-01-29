package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.model.Products;


@WebServlet("/Categories")
public class Categories extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ProductDaoImpl productDao = new ProductDaoImpl();
		List<Products> viewCategory;
		try {
			viewCategory = productDao.showCategory();
			request.setAttribute("showCategory", viewCategory);
			RequestDispatcher rd = request.getRequestDispatcher("categories.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		

	}

}
