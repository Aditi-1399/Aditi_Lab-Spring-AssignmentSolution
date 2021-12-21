<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<title>Save Student</title>
<link href='https://fonts.googleapis.com/css?family=Paprika' rel='stylesheet'>
<style>
h1{
font-family: Paprika, serif;
background-color: #ffffcc;
text-align: center;
font-size: 5vw;
}
body {
  background-color: #ffffe6;
font-family: Verdana,Arial sans-serif;
  font-size: 1.2vw;
}
</style>
</head>

<body>

	<div class="container">

		<h3>Student Details</h3>
		<hr>

		<p class="h4 mb-4">Add Student</p>


		<form action="/StudentDebateRegistration/save" method="POST">
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
			
			<!-- Add hidden form field to handle update -->
			<input type="hidden" name="studentid" value="${Student.studentid}" />
			
			<div class="form-inline">
				<input type="text" name="name" value="${Student.name}"
					class="form-control mb-4 col-4" placeholder="Name" required>
			</div>
			<div class="form-inline">

				<input type="text" name="department" value="${Student.department}"
					class="form-control mb-4 col-4" placeholder="Department" required>
			</div>

			<div class="form-inline">

				<input type="text" name="country" value="${Student.country}"
					class="form-control mb-4 col-4" placeholder="Country" required>
			</div>

			<button type="submit" class="btn btn-info col-2">Save</button>

		</form>

		<hr>
		<a href="/StudentDebateRegistration/list">Back to Student List</a>

	</div>
</body>

</html>










