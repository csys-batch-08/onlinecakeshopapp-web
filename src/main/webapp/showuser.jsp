<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.cakeshop.dao.impl.*" pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>showUser page</title>

<link rel="stylesheet" href="assets/css/showuser.css">
</head>
<body>

<div class="header container-fluid">
      	<h2> Users List</h2>     		
      </div>


<div class="sidenav">
<ul>
  <li><a href="ShowUser">View All Users List</a></li>
  <li><a href="addProduct.jsp">Add a New Product</a></li>
  <li><a href="viewProduct">Update Product</a></li>
  <li><a href="ShowCart">View Order Details</a></li>
  <li><a href="salesDate.jsp">View Sales Details</a></li>
  <li><a href="inactiveUser.jsp">Delete User</a></li>
  <li><a href="home.jsp">LogOut</a></li>
  
  </ul>
</div>


<table  class="table table-hover"  >
<caption></caption>
<thead>
<tr>
<th id="1"><h5 style=color:red><strong>User Id</strong></h5></th>
<th id="2"><h5 style=color:red><strong>User Name</strong></h5></th>
<th id="3"><h5 style=color:red><strong>Email Id</strong></h5></th>
<th id="4"><h5 style=color:red><strong>Password</strong></h5></th>
<th id="6"><h5 style=color:red><strong>Address</strong></h5></th>
<th id="8"><h5 style=color:red><strong>Role</strong></h5></th>
<th id="7"><h5 style=color:red><strong>User Wallet</strong></h5></th>


</tr>
</thead>
<c:forEach var="show" items="${showUser}" >
<tbody>
<tr>
<td><h5>${show.userId}</h5></td>
<td><h5>${show.userName}</h5></td>
<td><h5>${show.emailId}</h5></td>
<td><h5>${show.password}</h5></td>
<td><h5>${show.address}</h5></td>
<td><h5>${show.role}</h5></td>
<td><h5>${show.wallet}</h5></td>

</tr>
</tbody>
</c:forEach>
</table><br>

</body>

