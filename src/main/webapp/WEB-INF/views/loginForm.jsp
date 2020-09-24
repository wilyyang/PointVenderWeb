<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="resources/company/favicon.png">

    <title>Signin ID : 1234 PW : 4321</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/docs/examples/signin/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="resources/docs/assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

<body>

 <div class="container">

		<form class="form-signin" action="${loginUrl}" method="post">
			<c:if test="${param.error != null}">
				<div class="alert alert-danger">
					<p>Invalid username and password.</p>
				</div>
			</c:if>
			<c:if test="${param.logout != null}">
				<div class="alert alert-success">
					<p>You have been logged out successfully.</p>
				</div>
			</c:if>

			<h2 class="form-signin-heading">관리자 로그인</h2>
			<label for="inputEmail" class="sr-only">Admin ID</label> <input
				type="text" id="username" name="adminid" class="form-control"
				placeholder="Admin ID" required autofocus> <label
				for="inputPassword" class="sr-only">Password</label> <input
				type="password" id="password" name="adminpw" class="form-control"
				placeholder="Password" required> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
		</form>


	</div> <!-- /container -->


	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="resources/docs/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
