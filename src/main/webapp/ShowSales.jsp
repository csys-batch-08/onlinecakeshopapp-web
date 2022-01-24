<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>view DateWise Sales</title>
<style>
body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  padding: 10px;
}
table{
margin-top:100px;
}
</style>
</head>
<body>

<h2 style=color:red>Date Wise Sales Details</h2>

<% ResultSet rs=(ResultSet)session.getAttribute("SalesList");%>
<table class="table table-hover">
<tr>
<th>Total User </th>
<th>Total sale Amount  </th>
<th>Total Quantity sale</th>
</tr>
<% while(rs.next()){%>
<tr>
<td><%= rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%= rs.getString(3) %></td>
</tr>
<%} %>
</table><br><br>
<button><a href="admin.jsp" style="text-decoration:none;">Back</button></a>
</body>

</html>