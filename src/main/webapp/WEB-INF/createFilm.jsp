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

		<label for="title">Title:</label>
<<<<<<< HEAD
		 <input type="text"name="createfilm" required>
=======
		 <input type="text"name="title" required>
>>>>>>> 0295eb77d948213c4e0911ba095cc949b582da64
	   
			 <br>
			 <br>
		<label for="description">Description:</label>
		 <input type="text"  name="description">
		
			 <br>
			 <br> 
			<label for="releaseYear">Release Year:</label>
			 <input type="text"  name="releaseYear">
			
			 <br>
			 <br>
			 <label for="launguageId">LanguageID:</label>
  			 <input type="text" name="launguageId" required>
 			 
 			  <br>
			 <br> 
			<label for="language">Language:</label>
			 <input type="text"  name="createfilm" required>
			 
			  <br>
			 <br>  
			<label for="rentalRate">Rental Rate:</label>
			 <input type="text"  name="rentalRate" required>
			
			  <br>
			 <br> 
			<label for="rentalDuration">Rental Duration:</label>
			 <input type="text"  name="rentalDuration" required>
			
			  <br>
			 <br> 
			<label for="length">Length:</label>
			 <input type="text"  name="length">
			
			  <br>
			 <br>
			<label for="replacmentCost">Replacement Cost:</label>
			 <input type="text"  name="replacmentCost" required>
			
			 <br>
			 <br>
			<label for="rating">Rating:</label>
			 <input type="text"  name="rating">
			
			 <!--  <br>
			 <br> 
			<label for="specialFeatures">Special Features:</label>
			 <input type="text" name="specialFeatures"> -->
			
			  
			<label for="category">Category:</label>
			 <input type="text"  name="createfilm" required>
			  <br>
			 <br>
			 <input type="submit"/>

	</form>


</body>
</html>