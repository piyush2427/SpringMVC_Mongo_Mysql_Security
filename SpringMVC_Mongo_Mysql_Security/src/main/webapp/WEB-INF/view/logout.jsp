<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/headerfooter.css" />"
	rel="stylesheet">


<%
	session.invalidate();
%>

<div class="alert alert-success">
	<strong>Success!</strong> You are now logged out!! &nbsp;
	 <a class="btn btn-success" href="${pageContext.request.contextPath}/login">Go Back</a>
</div>

<%@ include file="footer.jsp"%>