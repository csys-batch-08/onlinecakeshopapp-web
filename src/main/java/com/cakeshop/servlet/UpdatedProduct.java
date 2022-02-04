package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.model.Products;

/**
 * Servlet implementation class UpdatedProduct
 */
@WebServlet("/UpdatedProduct")
public class UpdatedProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Products product = new Products();

		String cakename = request.getParameter("cakeName");

		int cakeprice = Integer.parseInt(request.getParameter("price"));

		int cakeId = Integer.parseInt(request.getParameter("cakeId"));

		String description = request.getParameter("description");

		String category = request.getParameter("categoryName");

		double rating = Double.parseDouble(request.getParameter("rating"));

		product = new Products(cakeId, cakename, description, cakeprice, category, null, rating);

		ProductDaoImpl productDao = new ProductDaoImpl();

		try {
			productDao.updateProduct(product);

			response.sendRedirect("admin.jsp");
		} catch (SQLException e) {

			e.getMessage();
		}
	}

}
