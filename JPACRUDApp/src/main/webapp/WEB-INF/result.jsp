<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Viewing Symphony</title>
</head>
<body>
<h3>${ sym.name }</h3>
Composer: ${ sym.composer }<br>
Key: ${ sym.musicalKey }<br>
Movements: ${ sym.movements }<br>
<br>
<a href="updateForm.do?id=${ sym.id }">Update this record</a><br>
<a href="delete.do?id=${ sym.id }">Delete this record</a>
<%-- <form action="delete.do?id=${ sym.id }" method="POST">
<input type="submit" value="Delete this record"> --%>
</form>

<a href="/">Find another symphony</a>
</body>
</html>