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
import com.cakeshop.dao.impl.AdminDaoImpl;
import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.dao.impl.WalletDaoImpl;
import com.cakeshop.exception.InvalidUserException;
import com.cakeshop.exception.LowBalanceException;
import com.cakeshop.model.Products;
import com.cakeshop.model.User;

@WebServlet("/Login")
public class Login extends HttpServlet {	
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {


		HttpSession session=request.getSession();
		String emailId = request.getParameter("EmailId");
		String password = request.getParameter("password");
		
		session.setAttribute("EmailId", emailId);
		session.setAttribute("password", password);	
		
		UserDaoImpl userDao = new UserDaoImpl();
		User currentUser;
		try {
			currentUser = userDao.validateUser(emailId, password);
		
		
		if(currentUser!=null) {
		
		
		int userId=currentUser.getUserId();
		session.setAttribute("userId", userId);
		
		session.setAttribute("CurrentUser",currentUser);
		session.setAttribute("CurrentUser", currentUser.getEmailId());
		
		String userRole=currentUser.getRole();
				
		if (userRole.equals("Admin")) {
			
			AdminDaoImpl admin=new AdminDaoImpl();
			admin.validateAdmin(emailId, password);
			response.sendRedirect("admin.jsp");
			
			
		} else if (userRole.equals("user")) {
			
			session.setAttribute("CurrentUser1", currentUser.getUserName());
			
			session.setAttribute("CurrentUser1", currentUser.getUserName());
		
			WalletDaoImpl walletBal=new WalletDaoImpl();
			int walletBal1=walletBal.walletbal(userId);
						
			if(walletBal1>1000) {
				ProductDaoImpl productDao = new ProductDaoImpl();
				List<Products> viewProducts = productDao.showProduct();
				request.setAttribute("showProduct", viewProducts);
				RequestDispatcher rd = request.getRequestDispatcher("showProduct.jsp");
				rd.forward(request, response);
		
			
			}else {
				try {
				throw new LowBalanceException();
				}catch(LowBalanceException e) {
					response.sendRedirect(e.getMessage());
				}
			}
		}
		else {
			try {
				
				throw new InvalidUserException();
			
				}catch(InvalidUserException e) {
					session.setAttribute("Invalid",e.getMessage());
					response.sendRedirect("Login.jsp");
				}
			
		}
	}		
		else{
			try {
				
			throw new InvalidUserException();
		
			}catch(InvalidUserException e) {
				session.setAttribute("Invalid",e.getMessage());
				response.sendRedirect("Login.jsp");
			}
		}

	} catch (SQLException e1) {

		e1.getMessage();
	}

}}
