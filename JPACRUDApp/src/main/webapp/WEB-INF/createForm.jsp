<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a new symphony</title>
</head>
<body>
	<h4>Adding a new symphony:</h4>
	<form action="create.do" method="POST">
		<input type="text" name="name" id="name">Title*<br>
		<input type="text" name="composer" id="composer">Composer*<br>
		<input type="text" name="musicalKey" id="musicalKey">Key<br>
		<input type="text" name="movements" id="movements">Number of movements<br>
		<br>* indicates a required field<br>
		<input type="submit" value="Submit">
	</form>
</body>
</html>