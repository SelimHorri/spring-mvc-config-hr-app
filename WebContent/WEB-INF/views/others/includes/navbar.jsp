<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Navbar_page</title>
	</head>
	
	<body>
		
		<!-- ******************** NavVar ***************** -->
		
		<nav class="navbar navbar-expand-lg navbar-dark bg-danger sticky-top">
		  <a class="navbar-brand" href="/spring_mvc_hibernate_demo">WEBSITE LOGO</a>
		  
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
			
		  <div class="collapse navbar-collapse" id="navbarColor02">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="/spring_mvc_hibernate_demo/page">Home <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Features</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">Pricing</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">About</a>
		      </li>
		    </ul>
		    
		    <ul class="nav nav-link navbar-nav navbar-right">
		    	
		    	<li class="nav-item">
		        <a class="nav-link" href="login"> <span class="glyphicon glyphicon-log-in"></span> Login</a>
		      </li>
		      
		      <li class="nav-item">
		        <a class="nav-link" href="register"> <span class="glyphicon glyphicon-log-in"></span> Register</a>
		      </li>
		    
			</ul>
		    
		    <form class="form-inline my-2 my-lg-0">
		      <input class="form-control mr-sm-2" type="text" placeholder="Search">
		      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
		    </form>
		    
		  </div>
		</nav>
		
	</body>
	
</html>