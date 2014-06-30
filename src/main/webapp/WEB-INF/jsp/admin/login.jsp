<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Sainteclaire Admin</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css"
	href="../css/bootstrap/css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="../css/theme.css">
<link rel="stylesheet"
	href="../css/font-awesome/css/font-awesome.css">

<script src="../js/jquery-1.8.1.min.js" type="text/javascript"></script>

<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
</style>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>

<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
	<!--<![endif]-->

	<div class="navbar">
		<div class="navbar-inner">
			<ul class="nav pull-right">

			</ul>
			<a class="brand" ><span class="first">Your</span>
				<span class="second ">Company</span></a>
		</div>
	</div>

	<div class="row-fluid">
		<div class="dialog">
			<div class="block">
				<p class="block-heading"><spring:message code="login.admin.title" /></p>
				<div class="block-body">
					<form action="../auth/login.do" method="post">
						<label><spring:message code="login.admin.username" /></label> <input type="text" class="span12">
						<label><spring:message code="login.admin.password" /></label> <input type="password" class="span12">
						<input type="submit"   class="btn btn-primary pull-right" value="<spring:message code="login.admin.btn.login" />">
						
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
			<p>
				<span  style="display: none;"><spring:message code="login.admin.password.error" /></span>
			</p>
		</div>
	</div>


	<script src="../js/bootstrap.min.js"></script>
</body>
</html>
