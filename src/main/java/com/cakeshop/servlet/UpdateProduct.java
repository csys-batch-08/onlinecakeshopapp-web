package com.cakeshop.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/updateProduct")
public class UpdateProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		String cakename = request.getParameter("cakeName");
		request.setAttribute("cakeName", cakename);
		session.setAttribute("cakename", cakename);

		int cakeprice = Integer.parseInt(request.getParameter("cakePrice"));
		request.setAttribute("cakeprice", cakeprice);
		session.setAttribute("cakeprice", cakeprice);

		int cakeId = Integer.parseInt(request.getParameter("cakeId"));
		request.setAttribute("cakeId", cakeId);
		session.setAttribute("cakeId", cakeId);

		String description = request.getParameter("cakeDescription");
		request.setAttribute("description", description);
		session.setAttribute("description", description);

		String category = request.getParameter("category");
		request.setAttribute("category", category);
		session.setAttribute("category", category);

		double rating = Double.parseDouble(request.getParameter("rating"));
		request.setAttribute("rating", rating);
		session.setAttribute("rating", rating);

		response.sendRedirect("updateProduct.jsp");

	}

}
