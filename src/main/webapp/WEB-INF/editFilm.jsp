<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Film</title>
</head>
<body>
	<h1>Edit Film</h1>

	<p>Complete the form below, enter values in which you want to
		update. If field has no update, leave blank. 
	

	
	<form action="editFilm.do" method="POST">
	
		 <input id="ID" type="number" name="ID" value="${film.id}"/>
		 
		<label for="title">Title:</label>
		
		 <input id="title" type="text" placeholder="new title" name="title"/>

			 <br>
			 <br>
		<label for="description">Description:</label>
		 <input id="description" type="text" placeholder="new description" name="description" value="${film.description}"/>
		
			 <br>
			 <br> 
			<label for="releaseYear">Release Year:</label>
			 <input id="releaseYear" type="number" placeholder="new release year" name="releaseYear" value="${ film.releaseYear }"/>
			
			
			<input type="hidden" name="launguageId" value="${film.launguageId}"/>
			 <%-- <br>
			 <br>
			 <label for="launguageId">Language ID:</label>
  			 <input  id="launguageId" type="number" placeholder="new language ID" name="launguageId" value="${film.launguageId }"/>
 			  --%>
 			  <%-- <br>
			 <br>
			<label for="language">Language:</label>
			 <input id="language" type="text"  placeholder="new language" name="language" value="${film.language }"/>
			  --%>
			  
			  <input type="hidden" name="language" value="${film.language}"/>
			  <br>
			 <br>  
			<label for="rentalRate">Rental Rate:</label>
			 <input id="rentalRate" type="number"  placeholder="new rental rate" name="rentalRate" value="${film.rentalRate}"/>
			
			  <br>
			 <br> 
			<label for="rentalDuration">Rental Duration:</label>
			 <input id="rentalDuration" type="number"  placeholder="new rental duration" name="rentalDuration" value="${film.rentalDuration }">
			
			  <br>
			 <br> 
			<label for="length">Length:</label>
			 <input id="length" type="number" placeholder="new length" name="length" value="${film.length }"/>
			
			  <br>
			 <br>
			<label for="replacmentCost">Replacement Cost:</label>
			 <input id="replacmentCost" type="number" placeholder="new replacement cost" name="replacmentCost" value="${film.replacmentCost}"/>
			
			 <br>
			 <br>
			<label for="rating">Rating:</label>
			 <input id="rating" type="text" placeholder="new rating" name="rating" value="${film.rating}"/>
			<br>
			<br>
			 <!--  <br>
			 <br> 
			<label for="specialFeatures">Special Features:</label>
			 <input type="text" name="specialFeatures"> -->
			
			  
			<label for="category">Category:</label>
			 <input id="category" type="text" placeholder="new category" name="category" value="${film.category}"/>
	
			  <br>
			 <br>
			 <input type="submit"/>
	</form>
<a href="home.do" ><button name="home" type="submit">Home</button></a>
</body> 
</html>