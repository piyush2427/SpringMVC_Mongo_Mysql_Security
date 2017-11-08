<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
 <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
 <link href="<c:url value="/resources/css/login.css" />" rel="stylesheet">

</head>
	<body>  
		<div class = "container">
			<div class="wrapper">
		<form name="f" action="<c:url value='j_spring_security_check'/>"  class="form-signin"
					method="POST">
		<h3 class="form-signin-heading">Sign in</h3>
		<h4  class="form-signin-heading">to continue to Gmail</h4>
		<hr class="colorgraph"><br>
		 <input type='text' class="form-control" name='j_username'  placeholder="Username" required  autofocus />
		 <input type='password' class="form-control" name='j_password' placeholder="Password" required >
				
		<input name="submit" class="btn btn-lg btn-primary btn-block" type="submit">&nbsp;<input class="btn btn-lg btn-primary btn-block" name="reset" type="reset">
			
		</form>
		</div>
		</div>
	</body>
</html>