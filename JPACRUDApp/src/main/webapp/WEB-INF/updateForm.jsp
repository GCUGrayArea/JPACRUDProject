<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update form</title>
</head>
<body>
	<h4>Update a symphony record:</h4>
	<form action="update.do" method="POST">
		<input type="text" name="sid" id="sid" value="${ sym.id }" disabled="disabled" ><br>
		<input type="text" name="name" id="name" value="${ sym.name }">*<br>
		<input type="text" name="composer" id="composer" value="${ sym.composer }">*<br>
		<input type="text" name="musicalKey" id="musicalKey" value="${ sym.musicalKey }"><br>
		<input type="text" name="movements" id="movements" value="${ sym.movements }">*<br>
		* do not leave blank<br>
	<input type="submit" value="Save changes">
	</form>
</body>
</html>