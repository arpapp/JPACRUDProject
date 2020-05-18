<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bar Info</title>
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
	font-size: 55px;
}

body {
	background-image:
		linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url(https://cdn.pixabay.com/photo/2016/03/09/09/42/buildings-1245953_1280.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

.main, h2 {
	font-family: 'Fredoka One', cursive;
	color: white;
	/* width: 400px;
	height: auto;
	margin: 0 auto;
	text-align: center; */
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
</head>
<body>

	<c:choose>
		<c:when test="${!empty bar }">
			<h1>Is this the bar you would like to delete?</h1>
			<br>
			<h2>Bar: ${bar.name}</h2>
			<h2>ID: ${bar.id }</h2>
			<c:choose>
				<c:when test="${!empty bar.city }">
					<h2>City: ${bar.city}</h2>
				</c:when>
				<c:otherwise>
					<p>No city listed</p>
				</c:otherwise>
			</c:choose>

			<h2>Country: ${bar.country}</h2>
			<h2>Rating: ${bar.rating}</h2>
			<h2>Has the person who entered ${bar.name} blacked out at this
				establishment: ${bar.blackedOutAt}</h2>

			<c:choose>
				<c:when test="${!empty bar.activities }">
					<h2>Activities: ${bar.activities}</h2>
				</c:when>
				<c:otherwise>
					<p>No activities found</p>
				</c:otherwise>
			</c:choose>

			<c:choose>
				<c:when test="${!empty bar.otherComments }">
					<h2>Other comments: ${bar.otherComments}</h2>
				</c:when>
				<c:otherwise>
					<p>No comments found</p>
				</c:otherwise>
			</c:choose>

			<form action="delete.do" method=POST>
				<input class="button" type="submit" value="Delete Bar">
				<input type="hidden" value="${bar.id }" name="id">
			</form>

		</c:when>
		<c:otherwise>
			<p>No Bar Found</p>
		</c:otherwise>
	</c:choose>
</body>
</html>