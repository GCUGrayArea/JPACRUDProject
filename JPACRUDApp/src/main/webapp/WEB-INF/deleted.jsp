<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleting symphony</title>
</head>
<body>
	<c:choose>
	<c:when test="${successful.booleanValue()}">
	<p>Deletion successful</p>
	</c:when>
	<c:otherwise>
      <p>Deletion failed</p>
    </c:otherwise>
	</c:choose>
	<br>
	<a href="/">Home</a>		
</body>
</html>