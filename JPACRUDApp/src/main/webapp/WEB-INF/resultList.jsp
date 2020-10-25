<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Symphonies</title>
</head>
<body>
<h4>Search results for ${ heading } </h4>
<c:choose>
	<c:when test="${not empty symList}">
	<c:forEach var="s" items="${ symList }">
		<a href="find.do?id=${ s.id }">${ s.name }</a> by ${ s.composer }<br>
	</c:forEach>
	<br><br>
	These symphony records can be modified or deleted on their respective pages.
	</c:when>
	<c:otherwise>
		No results were found
	</c:otherwise>
</c:choose>
<a href="/">Home</a>
</body>
</html>