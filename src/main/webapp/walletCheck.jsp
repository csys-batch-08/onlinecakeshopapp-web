<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Wallet check</title>


<link rel="stylesheet" href="assets/css/walletCheck.css">
</head>
<body>


<fieldset id="box"><legend>Recharge Wallet</legend>
<h2>Your Wallet Amount is below 1000!! Please Recharge </h2>
<form action="walletcheck">
<button class="button button1" type="submit" id="button">Pay</button>
</form><br>
<form action="home.jsp">
<button class="button button1" type="submit" id="button">Pay Later</button>
</form>
</fieldset>
</body>
</html>