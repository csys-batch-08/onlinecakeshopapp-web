<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Wallet Recharge</title>
</head>
<link rel="stylesheet" href="assets/css/recharge.css">
<body>
<div class="container">
<form action="RechargeWallet">

<h4 style="color:red">User Email ID : <c:out value='${sessionScope.email}'/></h4><br/>
<h4 style="color:red">Your Wallet Balance : <c:out value='${sessionScope.userWallet}'/></h4>


 <div class="row">
    <div class="col-25">
      <label for="fname">Enter Amount : </label>
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="newamount" placeholder="Amount" > 
    </div>
  </div>
 
 <div class="row">
 <input type="submit" value="Recharge">
 </div>

</form>

</div>
</body>
</html>