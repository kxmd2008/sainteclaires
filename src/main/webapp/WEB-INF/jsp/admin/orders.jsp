<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path; 
%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jquery.dataTables.min.css">
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

.left-margin {
	margin-left: 10px;
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
<body>
<jsp:include page="main.jsp"></jsp:include>

<div class="content">

	<div class="header">
		<h1 class="page-title">订单查询</h1>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="btn-toolbar">
				<form class="form-inline" role="form" style="margin-bottom: 0px;">
				   <input type="text" class="form-control" id="order_no" placeholder="订单号">
				   <input type="text" class="form-control left-margin" id="account_no" placeholder="客户号">
				  <button class="btn btn-primary left-margin" type="button" onclick="javascript:search();"> <!-- onclick="javascript:search(); -->
					<i class="icon-plus"></i> 查询
				  </button>
				</form>
				
				<!-- <button class="btn">Import</button>
				<button class="btn">Export</button> -->
				<div class="btn-group"></div>
			</div>
			<div class="well">
				<table class="table table-striped table-bordered table-hover datatable" id="orders" style="margin-bottom:20px;">
					<thead>
						<tr>
							<th>订单号</th>
							<th>客户帐号</th>
							<th>下单时间</th>
							<th>付款时间</th>
							<th>订单金额</th>
							<th>订单状态</th>
						</tr>
					</thead>
					<tbody>
						
					</tbody>
				</table>
			</div>

			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</div>

<script src="<%=basePath%>/js/jquery.dataTables.js"></script>
<script src="<%=basePath%>/common/bootstrap.min_v2.js"></script>
<script src="<%=basePath%>/js/dataTables.bootstrap.js"></script>
<script src="<%=basePath%>/js/admin/orders.js"></script>
  </body>
</html>

