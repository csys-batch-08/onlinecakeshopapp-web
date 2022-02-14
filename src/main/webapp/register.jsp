<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>login page</title>
 
<link rel="stylesheet" href="assets/css/register.css">

</head>
<body>
 
	<form action="Register" method="post"  >

		<div class="container">
			<img alt="image" src="assets/images/user1.png" height="70" width="70">
			<div class="card" >
			
				<label id="1"><input type="text" name="userName" placeholder="Username"
					pattern="[A-Za-z]{3,}" required autofocus></label><br><br>
					
					<label id="2"><input type="email" name="EmailId" placeholder="Email_id"
					required></label><br><br>
					
					<label id="3"><input type="password" name="password"
					placeholder="Password" title="8 Charecter,@#$&,Lower and Upper Case"
					pattern="^(?=.*[0-9])(?=.*[@#$%*!^()_+])(?=.*[a-z])(?=.*[A-Z]).{4,16}$"	required></label><br><br> 
					
					<label id="4"><input type="text" name="address" placeholder="address"
					pattern="[A-Za-z0-9]{4,}+[,][A-Za-z]{4,}+[,][0-9]{6}+{25,}" title="Street Number & Street Name,AdressLine,Pincode"
					required></label><br><br>
					
				<button class="button button1" type="submit" id="button">Submit</button>
				<br><button class="button button1" type="reset" id="button">Reset</button>
		</div>
		</div>
			
	</form>

</body>
</html>

