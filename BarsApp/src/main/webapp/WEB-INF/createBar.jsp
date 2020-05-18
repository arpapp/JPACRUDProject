<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create a Bar</title>
<link
	href="https://fonts.googleapis.com/css2?family=Fascinate+Inline&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap"
	rel="stylesheet">
<style>
h1 {
	font-family: 'Fascinate Inline', cursive;
	color: white;
	text-align: center;
	font-size: 75px;
}

h4{
font-family: 'Fascinate Inline', cursive;
	color: white;
	font-size: 25px;
}

body {
	background-image:
		linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url(https://cdn.pixabay.com/photo/2016/03/09/09/42/buildings-1245953_1280.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

.main {
	font-family: 'Fredoka One', cursive;
	color: white;
	width: 400px;
	height: auto;
	margin: 0 auto;
	text-align: center;
	font-size: 30px;
}

table {
	font-family: 'Fredoka One', cursive;
	color: white;
	/* width: 400px;
	height: auto;
	margin: 0 auto;
	text-align: center; */
	font-size: 15px;
}

.button {
	font-size: 20px;
	color: white;
	background-color: transparent;
	font-family: 'Fredoka One', cursive;
	border: 2px solid white;
	border-radius: 8px;
	transition-duration: 0.4s;
}
.button:hover{
	font-size: 20px;
	color: black;
	background-color: white;
	font-family: 'Fredoka One', cursive;
	border: 2px solid white;
	border-radius: 8px;
}
.textBox{
	font-size: 20px;
	font-family: 'Fredoka One', cursive;
}
</style>
</head>
<body>

	<h1>Create a Bar</h1>
	<h4>Please enter the following information:</h4>

	<form action="createBar.do" method="POST">
		<table>
			<tr>
				<td>Name:</td>
				<td><input class="textBox" type="text" name="name" size="45" required></td>
			</tr>
			<tr>
				<td>City:</td>
				<td><input class="textBox" type="text" name="city" size="45"></td>
			</tr>
			<tr>
				<td>Country:</td>
				<td><input class="textBox" type="text" name="country" size="45" required></td>
			</tr>
			<tr>
				<td>Rating (1-worst 10-best):</td>
				<td><input class="textBox" type="number" name="rating" min="1" max="10"></td>
			</tr>
			<tr>
				<td>Have you blacked out at this bar:</td>
				<td><input class="textBox" type="text" name="blackedOutAt" size="5"></td>
			</tr>
			<!-- <input type="radio" name="blackedOutAt"required>Yes
		<input type="radio" name="blackedOutAt" required>No -->
			<tr>
				<td>Activities:</td>
				<td><input class="textBox" type="text" name="activities" size="100"></td>
			</tr>
			<tr>
				<td>Other comments:</td>
				<td><input class="textBox" type="text" name="otherComments" size="100"></td>
			</tr>
		</table>
		<br> <input type="submit" class="button" value="Submit" />
	</form>
</body>
</html>