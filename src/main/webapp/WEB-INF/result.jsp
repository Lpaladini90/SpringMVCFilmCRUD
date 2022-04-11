<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Film by Id Results</title>
</head>
<body>
	<h3>Results based on Film Id search</h3>
	<c:choose>
		<c:when test="${!empty film}">

			<h3>
				Film result using the following Id number:
				<c:out value="${ film.id }" />
			</h3>
			<br>
			<br>
			<ul>
				<li><strong>Title:</strong> <c:out value="${film.title}" /><br>
					<br></li>

				<li><strong>Description:</strong> <c:out value="${film.description}" /><br>
					<br></li>

				<li><strong>Release Year:</strong> <c:out value="${film.releaseYear}" /><br>
					<br></li>

				<li><strong>Language ID:</strong> <c:out value="${film.launguageId}" /><br>
					<br></li>

				<li><strong>Language:</strong> <c:out value="${film.language}" /><br> <br></li>

				<li><strong>Rental Rate:</strong> <c:out value="${film.rentalRate}" /><br>
					<br></li>

				<li><strong>Rental Duration:</strong> <c:out value="${film.rentalDuration}" /><br>
					<br></li>

				<li><strong>Length:</strong> <c:out value="${film.length}" /><br> <br></li>

				<li><strong>Replacement Cost:</strong> <c:out value="${film.replacmentCost}" /><br>
					<br></li>

				<li><strong>Rating:</strong> <c:out value="${film.rating}" /><br> <br></li>

				<li><strong>Special Features:</strong> <c:out value="${film.specialFeatures}" /><br>
					<br></li>

				<li><strong>Category:</strong> <c:out value="${film.category}" /><br> <br></li>

				<li><strong>Actors in the film:</strong> <br>
				<br>

					<ul>
						<c:forEach items="${film.actorList}" var="actor">
							<li><strong>${actor.firstName} ${actor.lastName }</strong><br></li>
							<br>
						</c:forEach>
					</ul>
			</ul>
			
			
			<br>
	<br>
	<form action="editFilmById.do" method="GET">
		<button name="ID" type="submit" value="${film.id}">Edit Film</button>
	</form>

	<br>
	<br>

	<form action="deleteFilm.do" method="POST">
		<button name="id" type="submit" value="${film.id}">DELETE</button>
	</form>

	<br>
	<br>
		</c:when>
		<c:otherwise>

			<p>Film not found!</p>
		</c:otherwise>
	</c:choose>
	
	<a href="home.do"><button name="home" type="submit">Home</button></a>
</body>
</html>