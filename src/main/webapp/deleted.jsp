<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cancel order</title>
<style type="text/css">
body{
background-image:url('assets/rating.jpeg');
background-repeat:no-repeat;
background-size:cover;

}
.button {
  background-color:pink; 
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
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid pink;
  }
  .button1:hover {
  background-color:pink;
  color: white;
}
#box{

height:130px;
margin-top:200px;
margin-left:300px;
}
</style>
</head>
<body>
<center><fieldset id="box">
<form action="showProduct.jsp">
<h2 style=color:#FF007F><i>Your Amount is Refunded </i></h2>
<h2 style=color:#FF007F><i>Your Order Will Be Deleted!!</i></h2>

<button class="button button1">Back</button>
</form>
</fieldset></center>
</body>
</html>