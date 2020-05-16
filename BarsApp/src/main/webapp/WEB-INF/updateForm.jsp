<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update a Bar</title>
</head>
<body>

	<h1>Update ${bar.name }</h1>
	<h4>Please enter the following information:</h4>

	<form action="updateBar.do" method="POST">
		Name: <input type="text" name="name" size="45" value = "${bar.name }" required> 
		<br>
		City:<input type="text" name="city" size="45" value = "${bar.city }"> 
		<br>
		Country: <input type="text" name="country" size="45" value = "${bar.country }"required> 
		<br>
		Rating (1-worst 10-best): <input type="number" name="rating" value = "${bar.rating }" min="1" max="10">
		<br>
		Have you blacked out at this bar: 
		<input type="text" name="blackedOutAt" value = "${bar.blackedOutAt }" size="5"> 
		<!-- <input type="radio" name="blackedOutAt"required>Yes
		<input type="radio" name="blackedOutAt" required>No -->
		<br>
		Activities: <input type="text" name="activities" value = "${bar.activities }" size="200"> 
		<br>
		Other comments: <input type="text" name="otherComments" value = "${bar.otherComments }" size="200"> 
		<br>
		<input type="submit" class="button" value="Submit" />
		<input type="hidden" value="${bar.id }" name="id">
	</form>
</body>
</html>