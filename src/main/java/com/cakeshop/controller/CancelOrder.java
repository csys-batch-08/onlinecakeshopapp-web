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

import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;

@WebServlet("/cancelOrder")
public class CancelOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		int userId = (int) session.getAttribute("userId");

		WalletDaoImpl walletDao = new WalletDaoImpl();

		double wallbal = 0;
		try {
			wallbal = walletDao.walletbal(userId);
		} catch (SQLException e) {

			e.getMessage();
		}

		String userName = session.getAttribute("CurrentUser1").toString();

		int cartId = Integer.parseInt(request.getParameter("cartId"));

		try {
			walletDao.walletRefund(userName, cartId, wallbal);
		} catch (SQLException e) {

			e.getMessage();
		}
		CartDaoImpl cartDao = new CartDaoImpl();

		try {
			cartDao.deleteCart(cartId);
		} catch (SQLException e) {

			e.getMessage();
		}
		RequestDispatcher rd = request.getRequestDispatcher("deleted.jsp");
		rd.forward(request, response);
	}

}
