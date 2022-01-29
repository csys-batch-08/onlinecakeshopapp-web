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
import javax.servlet.http.HttpSession;
import com.cakeshop.dao.impl.SpecialCakeDaoImpl;
import com.cakeshop.model.SpecialCake;

@WebServlet("/CustmizedOrders")
public class CustomizedOrders extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		int userId = Integer.parseInt(session.getAttribute("userId").toString());

		SpecialCakeDaoImpl cakes = new SpecialCakeDaoImpl();
		List<SpecialCake> orderlist;
		try {
			orderlist = cakes.viewCustomizedCart(userId);
			request.setAttribute("orderlist", orderlist);

			String emailId = session.getAttribute("CurrentUser").toString();

			request.setAttribute("email", emailId);

			RequestDispatcher rd = request.getRequestDispatcher("customizedOrders.jsp");
			rd.forward(request, response);
		} catch (SQLException e) {

			e.getMessage();
		}

	}

}
