<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>

<c:choose>

	<c:when test="${!empty bars }">

		<c:forEach var="bar" items="${bars }">
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
		</c:forEach>

	</c:when>

	<c:otherwise>
		<p>No bars found matching your keyword</p>
	</c:otherwise>


</c:choose>

</head>
<body>

</body>
</html>