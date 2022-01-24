
<%@page import="java.util.List" import ="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
     import ="com.cakeshop.dao.impl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>showUser page</title>

<style type="text/css">

*{
margin:0px;
padding:0px;
}

table, th, td {
  background-image:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1));
  border: 1px solid black;
  border-collapse: collapse;
  padding: 10px;
  margin-left:450px;
}

.header{
padding-top:24px;
background:#111;
color:white;
padding-bottom:24px;
}

.header a h3:hover{
background-color: red;
height:50px;
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}


.sidenav {
  height: 100%; /* Full-height: remove this if you want "auto" height */
  width: 325px; /* Set the width of the sidebar */
  position: fixed; /* Fixed Sidebar (stay in place on scroll) */
  z-index: 1; /* Stay on top */
  top: 50px; /* Stay at the top */
  left: 0;
  background-color: #111; /* Black */
  overflow-x: hidden; /* Disable horizontal scroll */
  padding-top: 50px;
}
.sidenav a {
  padding: 16px 16px 16px 18px;
  text-decoration: none;
  font-size: 20px;
  color:white;
  display: block;
}
.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 200px; /* Same as the width of the sidenav */
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}


body{
background-image:url('assets/background2.jpeg');
background-repeat:no-repeat;
background-size:cover;
}

.button{
margin-left:1250px;
width:100px;

}

ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #111;
}


li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}


/* Change the link color on hover */
li a:hover {
  background-color: #555;
  color: white;
}

</style>
</head>
<body>

<div class="header container-fluid">
      	<center><h2>Hole Users List</h2></center>      	
   		<a href="Logout.jsp"><h3 style="float:right; position:relative; bottom:40px; color:black;">Logout</h3></a>
      </div>


<div class="sidenav">
<ul>
  <li><a href="showUser.jsp">View All Users List</a></li>
  <li><a href="AddProduct.jsp">Add a New Product</a></li>
  <li><a href="UpdateProduct.jsp">Update Product</a></li>
  <li><a href="showCart.jsp">View Order Details</a></li>
  <li><a href="SalesDate.jsp">View Sales Details</a></li>
   <a href="InactiveUser.jsp">Delete User</a>
  <li><a href="Home.jsp">LogOut</a></li>
  
  </ul>
</div>


<%
UserDaoImpl userDao=new UserDaoImpl();
ResultSet rs=userDao.showAllUser();
%>
<table align="center" class="table table-hover" id="box">
<tr>
<th><h5 style=color:red><b>User Id</b></h5></th>
<th><h5 style=color:red><b>User Name</b></h5></th>
<th><h5 style=color:red><b>Email Id</b></h5></th>
<th><h5 style=color:red><b>Password</b></h5></th>
<th><h5 style=color:red><b>Address</b></h5></th>
<th><h5 style=color:red><b>User Wallet</b></h5></th>
<th><h5 style=color:red><b>Role</b></h5></th>

</tr>
<% while(rs.next()){%>
<tr>
<td><h5><%= rs.getInt(1) %></h5></td>
<td><h5><%= rs.getString(2) %></h5></td>
<td><h5><%= rs.getString(3) %></h5></td>
<td><h5><%= rs.getString(4) %></h5></td>
<td><h5><%= rs.getString(5) %></h5></td>
<td><h5><%= rs.getInt(7) %></h5></td>
<td><h5><%= rs.getString(6) %></h5></td>

</tr>
<%} %>
</table><br>

</body>
</html>