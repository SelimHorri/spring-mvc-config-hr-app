<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
	
	<head>
		
		<%@ include file="others/includes/stylish.jsp" %>
		
		<meta charset="UTF-8">
		<title>List persons</title>

	</head>
		
	<body>
		
		<%@ include file="others/includes/navbar.jsp" %>
		
		<div class='container container-fluid'>
			
			<br><br>
			
			<h1> Person Table :</h1> <br><br>
			
			<center> <h4> <a class='btn btn-outline-success' href='add-person'> Add person </a> </h4> </center> <br>
			<center>  </center>
			
			<br><br>
			
			<table class="table table-hover text-center">
				<thead >
				    <tr class=''>
				      <th scope="col" >id</th>
				      <th scope="col" >Firstname</th>
				      <th scope="col" >Lastname</th>
				      <th scope="col" >Email</th>
				      <th scope="col">Action</th>
				      <th scope="col"></th>
				      <th scope="col"></th>
				    </tr>
				</thead>
				
				<tbody>
				    <c:forEach var="p" items="${listPersons}" >
				    	
				    	<tr class=''>
				    		
				    		<td> ${p.id} </td>
				    		<td> ${p.fname} </td>
				    		<td> ${p.lname} </td>
				    		<td> ${p.email} </td>
				    		<td> <button type="button" class="btn btn-outline-primary">Edit</button> </td>
				    		<td> <button type="button" class="btn btn-outline-danger">Delete</button> </td>
				    		
				    	</tr>
				    	
				    </c:forEach>
				    
				</tbody>
			</table>
			
		</div>
		
		<br><br><br><br><br>
		
		<%@ include file="others/includes/footer.jsp" %>
	
	</body>
	
</html>
