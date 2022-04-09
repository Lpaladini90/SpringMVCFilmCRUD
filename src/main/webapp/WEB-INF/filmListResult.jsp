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


<%-- 	<c:choose>
		<c:when test="${empty searchByKeyWord.do}"> 
			<h3>No films found</h3>
		</c:when>
		<c:otherwise>
		 --%>
			<ul>

				<c:forEach var="f" items="${film}">
					<li><a href="findFilmById.do?ID=${f.id}">${f.title} </a></li>
				</c:forEach>

			</ul>
		<%-- </c:otherwise> --%>
		<%-- </c:choose> --%>
</body>
</html>