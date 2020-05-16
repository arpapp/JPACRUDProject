<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blackout Bars</title>
</head>
<body>
	<h1>Welcome to Blackout Bars Database</h1>

	<form action="searchId.do" method="GET">
		Search by Bar ID <br> <input type="text" name="id"> <input
			type="submit" value="submit">
	</form>
	
	<form action="searchKeyword.do" method="GET">
		Search by Keyword <br> <input type="text" name="keyword"> <input
			type="submit" value="submit">
	</form>

	<form action="createBarForm.do" method=GET>
		<input type="submit" value="Add a Bar">
	</form>
</body>
</html>