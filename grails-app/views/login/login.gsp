<!doctype html>

<head>

	<!-- Basics -->
	
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	
	<title>Login</title>

	<!-- CSS -->
	
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'reset.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'animate.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'css', file: 'styles.css')}" type="text/css">
	
</head>

	<!-- Main HTML -->
	
<body>
	
	<!-- Begin Page Content -->
	
		<div id="errorMessage"><h3>${message}</h3></div>	
		
	<div id="container">
		
		<g:form controller="login" action="login" method="post" ><%-- <form>--%>

	
		<label for="name" >Username:</label>
		<%--<g:textField name="username" value="romalopesTeste" />--%><input type="name" name="username" value="romalopes@yahoo.com.br" placeholder="Username or Email"> 
		<label for="username">Password:</label>
		<p><a href="#">Forgot your password?</a>
		
		<%--<input type="password" placeholder="password"> --%> 
		<g:passwordField name="password" />
		<div id="lower">
		
		<input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label>
		
		<g:actionSubmit action="login" value="login" />
		<%--<input type="submit" value="Login">--%>
		
		</div>
		
		</g:form><%--</form> --%>
		
	</div>
	
	
	<!-- End Page Content -->
	
</body>

</html>
	
	
	
	
	
		
	