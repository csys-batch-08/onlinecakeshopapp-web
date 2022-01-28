package com.cakeshop.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cakeshop.dao.impl.ProductDaoImpl;
import com.cakeshop.dao.impl.UserDaoImpl;
import com.cakeshop.model.Products;
import com.cakeshop.model.User;

@WebServlet("/ShowUser")
public class ShowUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   @Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	  UserDaoImpl userDao=new UserDaoImpl();
		
		List<User> userList=userDao.showAllUser();
		
		request.setAttribute("showUser", userList);
		
		RequestDispatcher rd = request.getRequestDispatcher("showuser.jsp");
		rd.forward(request, response);
	   
	   
	   
   }

}