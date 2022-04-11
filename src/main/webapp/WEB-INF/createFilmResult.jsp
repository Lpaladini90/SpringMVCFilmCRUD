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
	
	<c:choose>
	<c:when test="${empty film }">
	<h1> film wasn't created invalid input </h1>
	</c:when>
	<c:otherwise>
	<h1>Film was created with id: ${film.id} </h1>
	
	</c:otherwise>
	</c:choose>
	<br>
	
	<a href="home.do" ><button name="home" type="submit">Home</button></a>
	
</body>
</html>