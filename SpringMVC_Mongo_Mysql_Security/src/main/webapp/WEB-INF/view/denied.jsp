<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/headerfooter.css" />"
	rel="stylesheet">
</head>

<body>
	<div class="container">
		<div class="alert alert-info">
			<strong>Unauthorized access!</strong>
		</div>

		<hr />

		<c:if test="${not empty error}">
			<div class="alert alert-danger">
				<strong> Your fake login attempt was bursted, dare again !!</strong><br />
				Caused : ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
			</div>
		</c:if>
		<div class="alert alert-danger">
			<strong> Access denied!</strong> <a href="/piyushApp/login"
				class="btn btn-danger">Go back to login page</a>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>