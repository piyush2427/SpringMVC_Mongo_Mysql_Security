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
	 <script src="<c:url value="/resources/js/jquery.min.js" />"></script>
     <script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<title>Employee Management</title>
</head>
<body>
<%@ include file="header.jsp"%>
	
<div class="container-fluid">
 <div class="jumbotron"><h2>Employee Management Screen</h2></div>

	<form:form method="post" action="add" commandName="employee" >
		
				<form:label class="control-label" path="firstname">
						<spring:message code="label.firstname" />
					</form:label>
				<form:input class="form-control" path="firstname" />
			
				<form:label class="control-label" path="lastname">
						<spring:message code="label.lastname" />
					</form:label>
				<form:input class="form-control"  path="lastname" />
			<form:label  class="control-label" path="email">
						<spring:message code="label.email" />
					</form:label>
				<form:input  class="form-control"  path="email" />
			<form:label  class="control-label" path="telephone">
						<spring:message code="label.telephone" />
					</form:label>
				<form:input class="form-control"  path="telephone" /> <br/>
			<input type="submit" class="btn btn-primary sharp" value="<spring:message code="label.add"/>" />
	</form:form>
	
	<h3>Employees</h3>
	<c:if test="${!empty employeeList}">
	 <div class="table-responsive">    
		<table class="table table-hover">
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Telephone</th>
				<th>Action</th>
			</tr>
			<c:forEach items="${employeeList}" var="emp">
				<tr>
					<td>${emp.lastname},${emp.firstname}</td>
					<td>${emp.email}</td>
					<td>${emp.telephone}</td>
					<td><a class="btn btn-link" href="delete/${emp.id}">Delete</a></td>
				</tr>
			</c:forEach>
	
		</table>
		</div>
	</c:if>
</div>
</body>
</html>