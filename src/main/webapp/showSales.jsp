<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>view DateWise Sales</title>
<link rel="stylesheet" href="assets/css/showSales.css">
</head>
<body>

<h2 style=color:red>Date Wise Sales Details</h2>

<table class="table table-hover">
<caption></caption>
<tr>

<th id="1"><h5 style=color:red><strong>Total User</strong></h5></th>
<th id="2"><h5 style=color:red><strong>Total sale Amount</strong></h5></th>
<th id="3"><h5 style=color:red><strong>Total Quantity sale</strong></h5></th>

</tr>
<c:forEach var="show" items="${SalesList}">
<tr>
<td>${show.userId}</td>
<td>${show.totalPrice}</td>
<td>${show.quantity}</td>
</tr>
</c:forEach>
</table><br><br>
<button><a href="admin.jsp" style="text-decoration:none;">Back</a></button>
</body>

</html>