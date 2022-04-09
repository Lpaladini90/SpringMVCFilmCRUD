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
	Film ID:
	<c:out value="${film.id}" />
	<br> Title:
	<c:out value="${film.title}" />
	<br> Description:
	<c:out value="${film.description}" />
	<br> Release Year:
	<c:out value="${film.releaseYear}" />
	<br> Language ID:
	<c:out value="${film.idlanguageId}" />
	<br> Language:
	<c:out value="${film.language}" />
	<br> Rental Rate:
	<c:out value="${film.rentalRate}" />
	<br> Rental Duration:
	<c:out value="${film.rentalDuration}" />
	<br> Length:
	<c:out value="${film.length}" />
	<br> Replacement Cost:
	<c:out value="${film.replacementCost}" />
	<br> Rating:
	<c:out value="${film.idrating}" />
	<br> Special Features:
	<c:out value="${film.specialFeatures}" />
	<br> Category:
	<c:out value="${film.category}" />
	<br> Actors:
	<br>
	<c:forEach items="${actorList}" var="actor">
				${firstName } ${lastName }
				<br>
	</c:forEach>

	<form action="" method="POST">
		<input type="submit" name="edit film" value="edit film" />
	</form>

	<br>
	<form action="" method="POST">
		<input type="submit" name="delete film" value="delete film" />
	</form>


</body>
</html>