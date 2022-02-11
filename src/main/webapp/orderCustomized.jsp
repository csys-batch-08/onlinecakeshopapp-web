<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>order success</title>
<link rel="stylesheet" href="assets/css/orderCustomized.css">
</head>
<body>
<form action="ShowProduct">

<h1 style=color:#FF007F>Your Desired Cake Order is Placed!! It Will Be Ready Soon</h1>

<fieldset id="box"><legend>Invoice</legend>

<h2 style=color:#000>  Cake Flavour : ${requestScope['flavour']}</h2>

<h2 style=color:#000> Cake Type :  ${requestScope['type']}</h2>

<h2 style=color:#000> Cake Size :  ${requestScope['size']}</h2>

<h2 style=color:#000> Wallet Amount : ${requestScope['wallball']}</h2>

<h2 style=color:#000> Order Amount : ${requestScope['totalPrice']}</h2>

<button>Back</button>
</fieldset>


</form>
</body>
</html>