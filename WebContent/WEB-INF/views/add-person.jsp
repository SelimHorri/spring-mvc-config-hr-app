<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
	
	<head>
		<%@ include file="others/includes/stylish.jsp" %>
		
		<meta charset="UTF-8">
		<title>Add Person</title>
	</head>
		
	<body>
		
		<%@ include file="others/includes/navbar.jsp" %>
		
		<br><br><br>
		
		<div class='container container-fluid'>
			
			<form action='add-person' method='POST' >
				
			  <fieldset>
			  	
			    <legend>Legend</legend><br><br>
			    
			    <div class='alert alert-dismissible alert-warning'>
			    	<h4 class='text-center text-danger'> <i> ${error} </i> </h4>
			    </div><br><br>
			    
			    <div class="form-group">
			    	
			      <input name='fname' type="text" class="form-control" placeholder="Enter firstname.." autofocus> <br>
			      <input name='lname' type="text" class="form-control" placeholder="Enter lastname.."> <br>
			      <input name='mail' type="email" class="form-control" placeholder="Enter email..">
			      <small class="form-text text-muted">We'll never share your email with anyone else.</small><br>
			      <input name='pwd1' type="password" class="form-control" placeholder="Enter password.."> <br>
			      <input name='pwd2' type="password" class="form-control" placeholder="Confirm password.."> <br>
			      
			    </div>
			    
			  </fieldset>
			  
				<br><br><br>
				
				<input type="submit" class="btn btn-primary" value='Save Person' />
			  
			</form>
			
		</div>
		
		<br><br><br><br><br>
		
		<%@ include file="others/includes/footer.jsp" %>	
		
	</body>
	
</html>