<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Sainteclaire Admin</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css" href="../common/bootstrap.min_v2.css">

<link rel="stylesheet" type="text/css" href="../css/theme_v2.css">
<link rel="stylesheet"
	href="../css/font-awesome/css/font-awesome.css">

<script src="../js/jquery.js" type="text/javascript"></script>

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
			<a class="brand" ><span class="first"></span>
				<span class="second ">Sainteclaire Management System</span></a>
		</div>
	</div>

	<div class="row-fluid">
		<div class="dialog">
			<div class="block">
				<p class="block-heading"><spring:message code="login.admin.title" /></p>
				<div class="block-body">
					<form action="../adminLogin" method="post">
						<label><spring:message code="login.admin.username" /></label> <input type="text" class="span12" name="j_username" value="">
						<label><spring:message code="login.admin.password" /></label> <input type="password" class="span12" name="j_password" value="">
						<input type="submit"   class="btn btn-primary pull-right" value="<spring:message code="login.admin.btn.login" />">
						<div class="clearfix"></div>
					</form>
				</div>
			</div>
			<p>
				<c:if test="${errorMsg != null &&  errorMsg != ''}">
				<span style="color:red;"><spring:message code="${errorMsg}" /></span>
				</c:if>
			</p>
		</div>
	</div>


<!-- 	<script src="../js/bootstrap.min.js"></script> -->
<script src="../common/bootstrap.min_v2.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>

</body>
</html>
