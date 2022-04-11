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
	<h1>Add your film</h1>
	<p> "*" indicates required fields</p>
	<br>

	<form action="createFilm.do" method="POST">

		<label for="title">*Title:</label>
		 <input type="text"name="title" required>

			 <br>
			 <br>
		<label for="description">Description:</label>
		 <input type="text"  name="description">
			
			 <br>
			 <br> 
			<label for="*releaseYear">Release Year:</label>
			 <input type="number"  name="releaseYear" min="1900" max="2099" step="1" value="2016" required>
	
 			 
 			  <br>
			 <br> 
			<label for="launguageId">*Choose Language:</label>
				<select id="launguageId" name="launguageId" required>
				  <option value="1">1 - English</option>
				  <option value="2">2 - Italian</option>
				  <option value="3">3 - Japanese</option>
				  <option value="4">4 - Mandarin</option>
				  <option value="5">5 - French</option>
				  <option value="6">6 - German</option>
				</select>
			 
			  <br>
			 <br>  
			<label for="rentalRate">Rental Rate:</label>
			 <input type="number" step="any" name="rentalRate" value="4.99" >
			
			  <br>
			 <br> 
			<label for="rentalDuration">*Rental Duration:</label>
			 <input type="number"  name="rentalDuration" value="3" min="3" required>
			 
			
			  <br>
			 <br> 
			<label for="length">*Length:</label>
			 <input type="number"  name="length" value="" required>
			
			  <br>
			 <br>
			<label for="replacmentCost">Replacement Cost:</label>
			 <input type="number" step="0.01"  name="replacmentCost" value="19.99" required>
			
			 <br>
			 <br>
			<label for="rating">Rating:</label>
			 <input type="text"  name="rating" value="PG">

			  
			<label for="category">Category:</label>
			 <input type="text"  name="category" value="Action">
			  <br>
			 <br>
			 <input type="submit"/>

	</form>
	
	<br>
	<a href="home.do" ><button name="home" type="submit">Home</button></a>
</body>
</html>