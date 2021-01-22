<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	
	<head>
		<meta charset="UTF-8">
		<title>Registration</title>
		
		<%@ include file="others/includes/stylish.jsp" %>
		
	</head>
	
	<body>
		
		<%@ include file="others/includes/navbar.jsp" %>

		<form action='register' method='POST' >
			
			
			<br><br>
			
			<hr>
			
			<div class='container'>
				
				<center>
					<h1>Register</h1>
					<p>Please fill in this form to create an account.</p>
				</center>
				
			</div>
			
			<hr>
				
			<br>
			
			<div class="container container-fluid bg-light align-middle">
				
				<br>
				<center> <i> <h5> <font class='text-danger'> ${error} </font> </h5> </i> </center>
				
				
				
				<label for="fname"><b>Firstname :</b></label>
				<input id='fname' type="text" placeholder="Enter Firstname.." name="fname" class='form-control ' autofocus/><br><br>
				
				<label for="lname"><b>Lastname :</b></label>
				<input id='lname' type="text" placeholder="Enter Lastname" name="lname" class='form-control ' /><br><br>
				
				<label for="email"><b>Email :</b></label>
				<input type="email" placeholder="Enter Email.." name="mail" class='form-control' aria-describedby="emailHelp" id="exampleInputEmail1" /><br><br>
				
				 <label for="psw"><b>Password :</b></label>
				 <input id='myInput' type="password" placeholder="Enter Password.." name="pwd1" class='form-control ' /><br><br>
				 
				 <label for="psw-repeat"><b>Confirm Password :</b></label>
				 <input id='myInput2' type="password" placeholder="Confirm Password.." name="pwd2" class='form-control ' /><br>
				
				<br>
					
					<center>
						
						<div class="form-check">
						    <label class="form-check-label">
						     <input onclick="myFunction()" class="form-check-input" type="checkbox" value="">
						     Show Password
						    </label>
						</div>
						
					</center>
					
					<br><br>
					
					
				<p>
					By creating an account you agree to our <a href="#">Terms & Privacy</a>.
				</p><br><br>
	
				<center> <input id='btnSubmit' value='Save' type="submit" class="btn btn-success btn-lg "/><br><br> </center>
				
				<br><br>
				
				<div class="signin">
					<p> Already have an account? <a href="login">Login</a>. </p>
				</div>
				
				<br>
				
			</div><br>
			
		</form>
		
		<br><br><br><br>
		
		<script type="text/javascript">
					
			function myFunction() {
				
			    var x1 = document.getElementById("myInput1");
			    var x2 = document.getElementById("myInput2");
			    
			    if (x1.type === "password" && x2.type === "password" ) {
			        x1.type = "text";
			        x2.type = "text";
			    }
			    else {
			        x1.type = "password";
			        x2.type = "password";
			    }
			}
		
		</script>
		
		<%@ include file="others/includes/stylish.jsp" %>
		
	</body>
	
</html>