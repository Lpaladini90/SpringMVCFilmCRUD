<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Film Id Search</title>
</head>
<body>

<h3>Search the National Film Database using a Film's Id</h3>

	<br>
  <form action="findFilmById.do" method="GET">
 	Film's Id Number:
 	
 	<input type="number"  name="ID" value="1" min="1" required/>
 	<input type="submit"  value="Search" />
 	
 </form>
	
	<br>
	<br>
	<br>

	<a href="home.do" ><button name="home" type="submit">Home</button></a>
</body>
</html>