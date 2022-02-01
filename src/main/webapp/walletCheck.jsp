<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Wallet check</title>

<style type="text/css">
#box{
width:350px;
margin-left:600px;
margin-top:250px;
}
body{
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

}

.button {
  background-color:blue; 
  border: none;
  color: white;
  padding: 4px 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
   border-radius: 20px;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid blue;
  }
  
  .button1:hover {
  background-color:blue;
  color: white;
}
</style>
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