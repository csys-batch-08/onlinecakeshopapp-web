package com.cakeshop.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;

@WebServlet("/order")
public class Order extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		try {
			UserDaoImpl userDao = new UserDaoImpl();
			int userId;
			String userName = (String) session.getAttribute("CurrentUser1");

			userId = userDao.findUserId(userName);
			session.setAttribute("UserId", userId);

			WalletDaoImpl walletBal = new WalletDaoImpl();
			int walletBal1 = walletBal.walletbal(userId);

			if (walletBal1 < 2000) {

				String validName = "cakeId";

				int productId = Integer.parseInt(request.getParameter(validName));

				request.setAttribute(validName, productId);

				double oldRatings = Double.parseDouble(request.getParameter("oldRating"));
				int ratingCounts = Integer.parseInt(request.getParameter("ratingCount"));

				session.setAttribute("Rating", oldRatings);

				session.setAttribute("ratingcount", ratingCounts);

				session.setAttribute(validName, productId);

				String cname = request.getParameter("cakeName");

				session.setAttribute("cakename", cname);

				request.setAttribute("cakeName", cname);

				int price = Integer.parseInt(request.getParameter("cakePrice"));

				request.setAttribute("price", price);

				userId = userDao.findUserId(userName);
				session.setAttribute("UserId", userId);

				RequestDispatcher rd = request.getRequestDispatcher("order.jsp");
				rd.forward(request, response);
			}

			else {
				response.sendRedirect("walletCheck.jsp");
			}
		} catch (SQLException e) {

			e.getMessage();
		}

	}

}
