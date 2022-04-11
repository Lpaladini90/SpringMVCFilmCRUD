<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Keyword Results</title>
</head>
<body>
	<h3>Results based on keyword search</h3>

			<ol>
				<c:forEach var="f" items="${film}">
					<li><a href="findFilmById.do?ID=${f.id}">${f.title} </a></li>
				</c:forEach>

			</ol>
		
		<a href="home.do" ><button name="home" type="submit">Home</button></a>
</body>
</html>