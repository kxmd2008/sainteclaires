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
<body>
<jsp:include page="main.jsp"></jsp:include>

<div class="content">

	<div class="header">
		<h1 class="page-title">产品管理</h1>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="btn-toolbar">
				<a class="btn btn-primary" href="<%=basePath%>/auth/productAdd.do">
					<i class="icon-plus"></i> 新增产品
				</a>
				<div class="btn-group"></div>
			</div>
			<div class="well">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>产品名称</th>
							<th>所属类别</th>
							<th>产品价格</th>
							<th>产品库存</th>
							<th>状态</th>
							<th style="width: 26px;"></th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products }"  var="product"  varStatus="status">
						<tr>
							<td>${status.index + 1}</td>
							<td>${product.parentId}</td>
							<td>${product.name}</td>
							<td>${product.price}</td>
							<td>${product.status}</td>
							<td><a href="user.html"><i class="icon-pencil"></i></a> <a
								href="#myModal" role="button" data-toggle="modal"><i
									class="icon-remove"></i></a></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="pagination">
				<ul>
					<li><a href="#">Prev</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">Next</a></li>
				</ul>
			</div>

			<div class="modal medium hide fade" id="catModel" tabindex="-1"
				role="dialog" aria-labelledby="catLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="catLabel">新增产品</h3>
				</div>
				<div class="modal-body">
					
					
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
					<button class="btn btn-danger" data-dismiss="modal">Delete</button>
				</div>
			</div>

			<footer>
				<hr>

				<!-- Purchase a site license to remove this link from the footer: http://www.portnine.com/bootstrap-themes -->
				<p class="pull-right">
					A <a href="http://www.portnine.com/bootstrap-themes"
						target="_blank">Free Bootstrap Theme</a> by <a
						href="http://www.portnine.com" target="_blank">Portnine</a>
				</p>

				<p>
					&copy; 2012 <a href="http://www.portnine.com" target="_blank">Portnine</a>
				</p>
			</footer>

		</div>
	</div>
</div>



<script src="../js/bootstrap.min.js"></script>
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

