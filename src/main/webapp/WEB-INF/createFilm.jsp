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
	<form action="createFilm.do" method="GET">

		<label for="username">Title:</label> <input type="text" id="username"
			name="username" required> <input type="submit"> 
			<br>
		<label for="username">Description:</label> <input type="text"
			id="username" name="username"> <input type="submit">
		   <br>
	   <label for="username">Release Year:</label>
  <input type="text" id="username" name="username" required>
  <input type="submit">
  		<br>
	</form>


</body>
</html>