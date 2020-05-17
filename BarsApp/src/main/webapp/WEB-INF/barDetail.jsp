<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bar Info</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<style>
.image{
	border: 5px solid black
}
</style>
</head>
<body>

	<c:choose>
		<c:when test="${!empty bar }">

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

			<c:choose>
				<c:when test="${!empty bar.picture }">
					<img class ="image" src = "${bar.picture }"
						alt="Picture of bar"/>
				</c:when>
				<c:otherwise>
					<p>No picture found</p>
				</c:otherwise>
			</c:choose>

			<form action="updateForm.do" method=GET>
				<input type="submit" value="Update Bar"> <input
					type="hidden" name="id" value="${bar.id}">
			</form>

			<form action="deleteForm.do" method=GET>
				<input type="submit" value="Delete Bar"> <input
					type="hidden" name="id" value="${bar.id}">
			</form>

			<form action="home.do" method=GET>
				<input type="submit" value="Home">
			</form>

		</c:when>
		<c:otherwise>
			<p>No Bar Found</p>
			<form action="home.do" method=GET>
				<input type="submit" value="Home">
			</form>
		</c:otherwise>
	</c:choose>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>