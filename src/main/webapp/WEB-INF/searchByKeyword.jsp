<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find movie by Keyword</title>
</head>
<body>

<h3>Search Film with keyword</h3>

  <form action="searchByKeyWord.do" method="GET">

 	Keyword:
 	<input type="text" name="keyword"/>
 	<input type="submit" value="Search" />
 </form>
	
	<%--  Film ID: <c:out value="${id}" />
			<br>
     Title: <c:out value="${title}" />
			<br>
     Description: <c:out value="${description}" />
			<br>
     Release Year: <c:out value="${releaseYear}" />
			<br>
     Language ID: <c:out value="${languageId}" />
			<br>
     Language: <c:out value="${language}" />
			<br>
     Rental Rate: <c:out value="${rentalRate}" />
			<br>
     Rental Duration: <c:out value="${rentalDuration}" />
			<br>
     Length: <c:out value="${length}" />
			<br>
     Replacement Cost: <c:out value="${replacementCost}" />
			<br>
     Rating: <c:out value="${rating}" />
			<br>
     Special Features: <c:out value="${specialFeatures}" />
			<br>
	 Category: <c:out value="${category}"  />
	 		<br>
     Actors: <br><c:forEach items="${actorList}" var="actor">
				${actor.firstName } ${actor.lastName }
				<br>
			</c:forEach>
	
	<form action="" method="POST">
	<input type="submit" name= "edit film" value="edit film" />
	</form>
		
	<br>
	<form action="" method="POST">
	<input type="submit" name= "delete film" value="delete film" />
	</form> --%>
	
	
</body>
</html>