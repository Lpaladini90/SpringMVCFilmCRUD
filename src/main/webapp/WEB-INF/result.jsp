<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	<h3>Results</h3>

	
	<p>Film ID:
	</p>
	<c:out value="${ film.id }" />
	<br> Title:
	<c:out value="${film.title}" />
	<br> Description:
	<c:out value="${film.description}" />
	<br> Release Year:
	<c:out value="${film.releaseYear}" />
	<br> Language ID:
	<c:out value="${film.launguageId}" />
	<br> Language:
	<c:out value="${film.language}" />
	<br> Rental Rate:
	<c:out value="${film.rentalRate}" />
	<br> Rental Duration:
	<c:out value="${film.rentalDuration}" />
	<br> Length:
	<c:out value="${film.length}" />
	<br> Replacement Cost:
	<c:out value="${film.replacmentCost}" />
	<br> Rating:
	<c:out value="${film.rating}" />
	<br> Special Features:
	<c:out value="${film.specialFeatures}" />
	<br> Category:
	<c:out value="${film.category}" />
	<br> Actors:
	<br>
	<ul>
	<c:forEach items="${film.actorList}" var="actor">
				<li>${actor.firstName } ${actor.lastName } </li>
				<br>
	</c:forEach>
	</ul>

	
	<form action="editFilmById.do" method="GET">
 	ID:
 	<input type="text" name="ID"/>
 	<input type="submit" value="Edit" />
 	
 </form>
 
 
	<%-- <a href="editFilm.do?Id=${film.id}"> Edit Film Id:"${film.id}"</a>
	 --%>

	<br>
	<form action="deleteFilm.do" method="POST">
	<input type="submit" name= "deletefilm" value="DELETE" />
	<input type="hidden" name= "film" value="${film.id}" />
	</form>
	


</body>
</html>