<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Bar</title>
</head>
<body>

	<h1>Create a Bar</h1>
	<h4>Please enter the following information:</h4>

	<form action="createBar.do" method="POST">
		Name: <input type="text" name="name" size="45" required> 
		<br>
		City:<input type="text" name="city" size="45"> 
		<br>
		Country: <input type="text" name="country" size="45" required> 
		<br>
		Rating (1-worst 10-best): <input type="number" name="rating" min="1" max="10">
		<br>
		Have you blacked out at this bar: 
		<input type="text" name="blackedOutAt" size="5"> 
		<!-- <input type="radio" name="blackedOutAt"required>Yes
		<input type="radio" name="blackedOutAt" required>No -->
		<br>
		Activities: <input type="text" name="activities" size="200"> 
		<br>
		Other comments: <input type="text" name="otherComments" size="200"> 
		<br>
		<input type="submit" class="button" value="Submit" />
	</form>
</body>
</html>