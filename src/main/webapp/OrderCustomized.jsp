<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order success</title>
<style type="text/css">
body{
background-image:url('assets/index2.jpeg');
background-repeat:no-repeat;
background-size:cover;

}
h1{
margin-top:200px;
margin-left:300px;
}



</style>
</head>
<body>
<form action="showProduct.jsp">

<h1 style=color:#FF007F><i><b>Your Desired Cake Order is Placed!! It Will Be Ready Soon </b></i></h1>

<%String flavour=(String)session.getAttribute("flavour"); 
String type=(String)session.getAttribute("type");
String size=(String)session.getAttribute("size"); 
double totalPrice=(double)session.getAttribute("totalPrice");
double wallbal=(double)session.getAttribute("wallbal");

%>
<center><fieldset id="box">
<h2 style=color:#000>  Cake Flavour : <%=flavour%></h2>

<h2 style=color:#000> Cake Type :  <%=type %></h2>

<h2 style=color:#000> Cake Size :  <%=size %></h2>

<h2 style=color:#000> Wallet Amount : <%=wallbal %></h2>

<h2 style=color:#000> Order Amount : <%=totalPrice  %></h2>

<button>Back</button>
</fieldset>
</center>

</form>
</body>
</html>