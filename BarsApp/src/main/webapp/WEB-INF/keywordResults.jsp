<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
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
		url(https://cdn.pixabay.com/photo/2016/03/09/09/42/buildings-1245953_1280.jpg);
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
	font-family: 'Fredoka One', cursive;
	color: white;
	width: auto;
	height: auto;
	margin: 0 auto;
	
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
a{
	font-family: 'Fredoka One', cursive;
	color: white;
	font-size: 30px;
}
</style>
</head>
<body>
<c:choose>

	<c:when test="${!empty bars }">
		
		<h1>Results:</h1>

		<%-- <c:forEach var="bar" items="${bars }">
			<h1>Bar: ${bar.name}</h1>
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
			
			<form action="updateForm.do" method=GET>
				<input class="button" type="submit" value="Update Bar"> 
				<input type="hidden" name="id" value="${bar.id}">
			</form>
			
			<form action="deleteForm.do" method=GET>
				<input class="button" type="submit" value="Delete Bar"> 
				<input type="hidden" name="id" value="${bar.id}">
			</form>


			<form action="home.do" method=GET>
				<input class="button" type="submit" value="Home">
			</form>
		</c:forEach> --%>

	<c:forEach var="bar" items = "${bars}">
		<ul>
			<li><a href="searchId.do?id=${bar.id }">${bar.name }</a>
			
			<form action="updateForm.do" method=GET>
				<input class="button" type="submit" value="Update Bar"> 
				<input type="hidden" name="id" value="${bar.id}">
			</form>
			
			<form action="deleteForm.do" method=GET>
				<input class="button" type="submit" value="Delete Bar"> 
				<input type="hidden" name="id" value="${bar.id}">
			</form>


			<form action="home.do" method=GET>
				<input class="button" type="submit" value="Home">
			</form></li>
		</ul>
	</c:forEach>
	

	</c:when>

	<c:otherwise>
		<p>No bars found matching your keyword</p>
		<form action="home.do" method=GET>
				<input type="submit" value="Home">
			</form>
	</c:otherwise>


</c:choose>



</body>
</html>