<%@page import="java.sql.ResultSet"%>
<%@page import="com.cakeshop.dao.impl.SpecialCakeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customized Orders</title>
<style type="text/css">
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 20px;
}
body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}

/* Add a black background color to the top navigation */
.topnav {
  background-color: Gray;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: gray;
  color: white;
}
</style>
</head>
<body>
<div class="topnav" > 
  <a href="ViewOrder.jsp">Orders</a> 
   <a href="showProduct.jsp">Products</a> 
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>     
   <a href="CustomizedCake.jsp">Customized Cake</a>
   <a href="Home.jsp" style="float:right;">LogOut</a> 
   <a href="UserProfile.jsp" style="float:right;">Profile</a>
         
</div>
<%
int userId=Integer.parseInt(session.getAttribute("userId").toString());
System.out.println(userId);
SpecialCakeDaoImpl Cust=new SpecialCakeDaoImpl();
ResultSet rs=Cust.viewCustomizedCart(userId);
%>

<table align="center">
<tr>
<th>User Name</th>
<th>Quantity</th>
<th>Order Date</th>
<th>Flavour</th>
<th>Types</th>
<th>Shape</th>
<th>Total Price</th>

</tr>

<% String emailId=session.getAttribute("CurrentUser").toString();%>
<center><h2>User Name : <%=emailId %></h2></center>
<%while(rs.next()){%>
<tr>
<td><%= rs.getString(1) %></td>
<td><%= rs.getInt(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%= rs.getDouble(7) %></td>

</tr>
<%} %>
</table>





</body>
</html>