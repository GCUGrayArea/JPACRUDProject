<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Updating symphony</title>
</head>
<body>
	<c:choose>
	<c:when test="${successful.booleanValue()}">
	<p>Update successful</p>
	</c:when>
	<c:otherwise>
      <p>Update failed</p>
    </c:otherwise>
	</c:choose>
	<br>
	<a href="index.do">Home</a>		
</body>
</html>