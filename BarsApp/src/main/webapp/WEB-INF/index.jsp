<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>BarOut DB</title>
</head>
<body>

	<h1>Welcome to BarOut Database</h1>

	<div class="main">
		<!-- <center> -->
		<form action="searchId.do" method="GET">
			Search by Bar ID <br> 
			<input class="textBox" type="text" name="id"> 
			<input type="submit" class="button" value="submit">
		</form>

		<form action="searchKeyword.do" method="GET">
			Search by Keyword <br> 
			<input class="textBox" type="text" name="keyword"> 
			<input class="button" type="submit" value="submit">
		</form>
		<br>
		<form action="createBarForm.do" method=GET>
			<input class="button" type="submit" value=" Add a Bar ">
		</form>
		<!-- </center> -->
	</div>
</body>
</html>