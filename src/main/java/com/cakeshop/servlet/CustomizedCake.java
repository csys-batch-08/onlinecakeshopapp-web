package com.cakeshop.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.cakeshop.dao.impl.SpecialCakeDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;
import com.cakeshop.model.SpecialCake;

@WebServlet("/customized")
public class CustomizedCake extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String flavours = request.getParameter("flavour");

		session.setAttribute("flavours", flavours);

		String type = request.getParameter("type");

		session.setAttribute("type", type);

		String size = request.getParameter("size");

		session.setAttribute("size", size);

		int quantity = Integer.parseInt(request.getParameter("quantity"));

		String orderdate = request.getParameter("orderdate");

		LocalDate neworderdate = LocalDate.parse(orderdate);

		int userId = (int) session.getAttribute("userId");

		double totalPrice = (1000 * quantity);

		session.setAttribute("totalPrices", totalPrice);

		WalletDaoImpl walletDao = new WalletDaoImpl();

		int userWallet;
		try {
			userWallet = walletDao.walletbal(userId);
			double wallbal = userWallet - totalPrice;

			session.setAttribute("wallbal", wallbal);
			walletDao.updatewallet(wallbal, userId);
		} catch (SQLException e) {

			e.getMessage();
		}

		SpecialCake customized = new SpecialCake(userId, flavours, type, size, quantity, neworderdate);

		SpecialCakeDaoImpl customizedCake = new SpecialCakeDaoImpl();

		try {
			customizedCake.insertCake(customized);
		} catch (SQLException e) {

			e.getMessage();
		}

		request.setAttribute("flavour", flavours);

		String types = (String) session.getAttribute("type");

		request.setAttribute("type", types);

		String sizes = (String) session.getAttribute("size");

		request.setAttribute("size", sizes);

		double totalPrices = (double) session.getAttribute("totalPrices");

		request.setAttribute("totalPrice", totalPrices);

		double wallball = (double) session.getAttribute("wallbal");

		request.setAttribute("wallball", wallball);

		RequestDispatcher rd = request.getRequestDispatcher("orderCustomized.jsp");
		rd.forward(request, response);

	}

}
