<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*"  import ="com.cakeshop.dao.impl.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
<style>
body{
background-image:url('assets/contact.jpeg');
background-repeat:no-repeat;
background-size:cover;

}
#box {
	width: 350px;
	margin-left: 800px;
	margin-top: 40px;
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

h2{
margin-left:600px;
}

</style>
</head>
<body>
<div class="topnav" >
 <a class="active" href="Login.jsp">Login</a>
  <a href="register.jsp">Register</a> 
   <a href="Home.jsp">Return To Home</a>
</div>

<%!ResultSet rs;%>
<center><h2><i>For Any Queries Contact Us</i></h2></center>
<%HelpDaoImpl helpDao = new HelpDaoImpl(); 
rs=helpDao.showHelp();%>
<fieldset id="box">
<%while(rs.next()){%>

<h3>Contact Number : <%=rs.getString(1)%></h3>
<h3>Email Id : <%=rs.getString(2)%></h3>

<%}%>
</fieldset>
</body>
</html>