<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bar Info</title>
</head>
<body>
	<h1>Results</h1>
	<h2>${printOut}</h2>
	<form action="home.do" method=GET>
		<input type="submit" value="Home">
	</form>
</body>
</html>