<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleting symphony</title>
</head>
<body>
	<c:choose>
		<c:when test="${empty sym }">
		Deletion successful
		</c:when>
		<c:otherwise>
		Deletion failed
		</c:otherwise>
	</c:choose>
	<a href="index.do">Home</a>		
</body>
</html>