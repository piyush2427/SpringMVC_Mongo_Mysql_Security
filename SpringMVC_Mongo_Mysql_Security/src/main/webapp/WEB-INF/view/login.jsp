<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>
<link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/headerfooter.css" />"
	rel="stylesheet">
</head>
<body>

	<div class="container">
		<div class="wrapper">
			<form name="f" action="<c:url value='j_spring_security_check'/>"
				class="form-signin" method="POST">
				<h3 class="form-signin-heading">Sign in</h3>
				<input type='text' class="form-control" name='j_username'
					placeholder="Username" required autofocus /> <input
					type='password' class="form-control" name='j_password'
					placeholder="Password" required>
					<div class="checkbox">
  						<label><input type="checkbox" name="remember-me" /> Remember Me</label>
					</div>
				 <input
					name="submit" class="btn btn-lg btn-primary sharp btn-block"
					type="submit" value="Sign In">&nbsp;<input
					class="btn btn-lg btn-default sharp btn-block" name="reset"
					type="reset">

			</form>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>