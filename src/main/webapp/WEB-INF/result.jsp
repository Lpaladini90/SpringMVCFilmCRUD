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
	<c:choose>
<c:when test="${not empty film.id}" >
		 Film ID:
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
 	<button name="ID" type="submit" value="${film.id}">Edit Film</button>
 	
 </form>
 
 
	<%-- <a href="editFilm.do?Id=${film.id}"> Edit Film Id:"${film.id}"</a>
	 --%>



	<br>
	<form action="deleteFilm.do" method="POST">
	<button name="id" type="submit" value="${film.id}">DELETE</button>
	</form>
	</c:when>
	
	
	
	<c:otherwise>
	<p>Film not found or was deleted.</p>
	</c:otherwise>
    </c:choose>
    
    <a href="home.do" ><button name="home" type="submit">Home</button></a>
</body>
</html>