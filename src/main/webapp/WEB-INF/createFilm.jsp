<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Created Film</title>
</head>
<body>
	<form action="createFilm.do" method="POST">

		<label for="username">Title:</label>
		 <input type="text"name="createfilm" required>
	   
			 <br>
			 <br>
		<label for="description">Description:</label>
		 <input type="text"  name="createfilm">
		
			 <br>
			 <br> 
			<label for="releaseYear">Release Year:</label>
			 <input type="text"  name="createfilm">
			
			 <br>
			 <br>
			 <label for="launguageId">LanguageID:</label>
  			 <input type="text" name="createfilm" required>
 			 
 			  <br>
			 <br> 
			<label for="language">Language:</label>
			 <input type="text"  name="createfilm" required>
			 
			  <br>
			 <br> 
			<label for="rentalRate">Rental Rate:</label>
			 <input type="text"  name="createfilm" required>
			
			  <br>
			 <br> 
			<label for="rentalDuration">Rental Duration:</label>
			 <input type="text"  name="createfilm" required>
			
			  <br>
			 <br> 
			<label for="length">Length:</label>
			 <input type="text"  name="createfilm">
			
			  <br>
			 <br>
			<label for="replacmentCost">Replacement Cost:</label>
			 <input type="text"  name="createfilm" required>
			
			 <br>
			 <br>
			<label for="rating">Rating:</label>
			 <input type="text"  name="createfilm">
			
			  <br>
			 <br> 
			<label for="specialFeatures">Special Features:</label>
			 <input type="text" name="createfilm">
			
			  <br>
			 <br>
			<label for="category">Category:</label>
			 <input type="text"  name="createfilm" required>
			  <br>
			 <br>
			 <input type="submit"/>

	</form>


</body>
</html>