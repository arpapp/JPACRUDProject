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
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" size="45" required></td>
			</tr>
			<tr>
				<td>City:</td>
				<td><input type="text" name="city" size="45"></td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><input type="text" name="country" size="45" required></td>
			</tr>
			<tr>
				<td>Rating (1-worst 10-best):</td>
				<td><input type="number" name="rating" min="1" max="10"></td>
			</tr>
			<tr>
				<td>Have you blacked out at this bar:</td>
				<td><input type="text" name="blackedOutAt" size="5"></td>
			</tr>
			<!-- <input type="radio" name="blackedOutAt"required>Yes
		<input type="radio" name="blackedOutAt" required>No -->
			<tr>
				<td>Activities:</td>
				<td><input type="text" name="activities" size="200"></td>
			</tr>
			<tr>
				<td>Other comments:</td>
				<td><input type="text" name="otherComments" size="200"></td>
			</tr>
		</table>
		<br> <input type="submit" class="button" value="Submit" />
	</form>
</body>
</html>