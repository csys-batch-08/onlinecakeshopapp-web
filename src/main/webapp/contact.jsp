<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*"  import ="com.cakeshop.dao.impl.*"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<link rel="stylesheet" href="assets/css/contact.css">
</head>
<body>
<div class="topnav" >
 <a class="active" href="login.jsp">Login</a>
  <a href="register.jsp">Register</a> 
   <a href="home.jsp">Return To Home</a>
</div>

<h2><em>For Any Queries Contact Us</em></h2>

<c:forEach var="show" items="${contact}">

<fieldset id="box"><legend>Contact</legend><br>

<h3>Contact Number : ${show.phone}</h3><br>
<h3>Email Id       : ${show.email}</h3>

</fieldset>
</c:forEach>
</body>
</html>