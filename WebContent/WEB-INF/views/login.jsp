<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html lang="en">

	<head>
		
		<%@ include file="others/includes/stylish.jsp" %>
		
		<title>Login page</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
	</head>
	
	<body>
	
		<%@ include file="others/includes/navbar.jsp" %>		
		
		<br><br> <hr>
		
		<div class='container container-fluid'>
			
			<div class='sticky-top'>
				<center>
					<h1>Login</h1>
					<p>Please fill in this form to access your account.</p>
				</center>
			</div>
			
			<hr>
			<br>
			
		</div>
		
		<div class='container container-fluid  bg-light align-middle form-group' >
			
			<form action='login' method='POST'>
				
				<fieldset class='fieldset'>
					<legend>Personal information</legend><br>
					
					<center> <i> <h5> <font class='text-danger'> <strong> ${error} </strong> </font> </h5> </i> </center> <br><br>
					
					<div class='form-group' >
						<label>Email :</label>
						<input type='email' name='mail' class='form-control' aria-describedby="emailHelp" id="exampleInputEmail1" placeholder='Enter Email..' autofocus />
						<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
						<br>
						
					</div>
					
					<div class='form-group' >
						<label>Password :</label>
						<input id='myInput1' type='password' name='password' class='form-control ' placeholder='Enter password..' />
					</div>
					
					<br>
					
					<center>
						
						<div class="form-check">
						    <label class="form-check-label">
						     <input onclick='myFunction()' class="form-check-input" type="checkbox" value="" >
						     Show Password
						    </label>
						</div>
						
					</center>
					
					<br><br>
					
					<center> <input id='btnSubmit' onclick='errorMsg()' type='submit' value='Login' class='btn btn-success btn-lg btn-block' /> </center>
					
					<br> <br>
					
					<div class="container signup">
						<p>
							Not registered? <a href="register">Register</a>.
						</p>
					</div>

				</fieldset>
				
			</form>
		
		</div>
		
		<hr><br><br><br><br><br><br><br>
		
		<script type="text/javascript">
					
			function myFunction() {
				
			    var x1 = document.getElementById("myInput1");
			    
			    if (x1.type === "password") {
			        x1.type = "text";
			    }
			    else {
			        x1.type = "password";
			    }
			}
		
		</script>
		
		<%@ include file="others/includes/footer.jsp" %>
	
	</body>
</html>
