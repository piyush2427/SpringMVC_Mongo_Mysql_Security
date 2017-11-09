<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/headerfooter.css" />"
	rel="stylesheet">
<title>Employee Management</title>
</head>
<body>
<%@ include file="header.jsp"%>
	<h2>Employee Management Screen</h2>
	<h6>
		<a href="<c:url value='j_spring_security_logout'/>">Click here to
			logout</a>
	</h6>
	<form:form method="post" action="add" commandName="employee">

		<table>
			<tr>
				<td><form:label path="firstname">
						<spring:message code="label.firstname" />
					</form:label></td>
				<td><form:input path="firstname" /></td>
			</tr>
			<tr>
				<td><form:label path="lastname">
						<spring:message code="label.lastname" />
					</form:label></td>
				<td><form:input path="lastname" /></td>
			</tr>
			<tr>
				<td><form:label path="email">
						<spring:message code="label.email" />
					</form:label></td>
				<td><form:input path="email" /></td>
			</tr>
			<tr>
				<td><form:label path="telephone">
						<spring:message code="label.telephone" />
					</form:label></td>
				<td><form:input path="telephone" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit"
					value="<spring:message code="label.add"/>" /></td>
			</tr>
		</table>
	</form:form>


	<h3>Employees</h3>
	<c:if test="${!empty employeeList}">
		<table class="data">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Telephone</th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${employeeList}" var="emp">
				<tr>
					<td>${emp.lastname},${emp.firstname}</td>
					<td>${emp.email}</td>
					<td>${emp.telephone}</td>
					<td><a href="delete/${emp.id}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
<%@ include file="footer.jsp"%>
</body>
</html>