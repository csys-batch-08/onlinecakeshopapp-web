package com.cakeshop.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cakeshop.dao.impl.WalletDaoImpl;

@WebServlet("/RechargeWallet")
public class RechargeWallet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		double oldAmount = (double) session.getAttribute("userWallet");

		double newAmount = Double.parseDouble(request.getParameter("newamount"));
		request.setAttribute("Amount", newAmount);

		WalletDaoImpl update = new WalletDaoImpl();

		int userId = (int) session.getAttribute("userId");

		double walbal = oldAmount + newAmount;

		try {
			update.updatewallet(walbal, userId);
			response.sendRedirect("userProfile.jsp");

		} catch (SQLException e) {

			e.getMessage();
		}

	}

}
