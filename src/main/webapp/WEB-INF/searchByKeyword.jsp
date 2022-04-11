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
 	<input type="text" name="keyword" required/>
 	<input type="submit" value="Search" />
 </form>
	
	
	<a href="home.do" ><button name="home" type="submit">Home</button></a>
	
</body>
</html>