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
import com.cakeshop.dao.impl.CartDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;
import com.cakeshop.model.Cart;

@WebServlet("/Order")
public class OrderSuccess extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		String userName = (String) session.getAttribute("CurrentUser");

		UserDaoImpl userDao = new UserDaoImpl();
		int userId;
		try {
			userId = userDao.findUserId(userName);
		

		CartDaoImpl cartDao = new CartDaoImpl();

		session.setAttribute("userId", userId);

		int quantity = Integer.parseInt(request.getParameter("quantity"));

		LocalDate orderDate = LocalDate.parse(request.getParameter("orderDate"));

		int price1 = Integer.parseInt(request.getParameter("price"));

		double totalPrice = (price1 * quantity);

		WalletDaoImpl walletDao = new WalletDaoImpl();

		int userWallet = walletDao.walletbal(userId);

		double wallbal = userWallet - totalPrice;

		session.setAttribute("wallbal", wallbal);	
		
		 session.setAttribute("totalprices", totalPrice);

		walletDao.updatewallet(wallbal, userId);

		int cakeId = Integer.parseInt(request.getParameter("cakeId"));

		Cart cart = new Cart(cakeId, userId, quantity, totalPrice, orderDate);

		cartDao.insertCart(cart);

		double totalprice = (double) session.getAttribute("totalprices");
		request.setAttribute("totalprice", totalprice);

		double wallet1 = (double) session.getAttribute("wallbal");
		request.setAttribute("wallet", wallet1);

		RequestDispatcher rd = request.getRequestDispatcher("OrderSuccess.jsp");
		rd.forward(request, response);
		} catch (SQLException e) {

			e.getMessage();
		}

	}

}
