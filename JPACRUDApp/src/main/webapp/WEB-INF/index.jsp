<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JPA Symphony CRUD, by Gray</title>
</head>
<body>

	<h3>A List of Symphonies</h3>
	<c:forEach var="s" items="${ symList }">
		<a href="find.do?id=${ s.id }">${ s.name }</a> by ${ s.composer }<br>
	</c:forEach>
	<br>
	<form action="find.do" method="GET">
		<h4><label for="search">Search for symphonies by:</label></h4>
		<select name="searchType" id="searchType">
			<option value="composer">Composer</option>
			<option value="key">Key</option>
			<option value="movements">Number of movements</option>
		</select>
		<input type="text" id="val" name="val"><br>
		<input type="submit" value="Search">
	</form>	
	<a href=createForm.do>Add another symphony to this list</a><br>
	(Symphonies already on this list can be modified or deleted on their respective pages)<br>
	
</body>
</html>