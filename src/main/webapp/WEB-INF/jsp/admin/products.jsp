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

input {
	margin-right: 50px;
}

select {
	margin-bottom: 10px;
}

.btn-group{
	width:220px;
	margin-bottom: 10px;
}
.pagination{
	float:right;
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
<jsp:include page="main.jsp"></jsp:include>

<div class="content">

	<div class="header">
		<h1 class="page-title">产品管理</h1>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="btn-toolbar">
				<a class="btn btn-primary" href="<%=basePath%>/auth/productAdd">
					<i class="icon-plus"></i> 新增产品
				</a>
				<div class="btn-group"></div>
			</div>
			<div class="well">
				<table class="table table-striped table-bordered table-hover datatable" id="products">
					<thead>
						<tr>
							<th>#</th>
							<th>产品名称</th>
							<th>所属类别</th>
							<th>产品价格</th>
							<th>产品库存</th>
<!-- 							<th>状态</th> -->
							<th style="width: 40px;">操作</th>
						</tr>
					</thead>
					<tbody>
<%-- 						<c:forEach items="${products}"  var="product"  varStatus="status"> --%>
<!-- 						<tr> -->
<%-- 							<td>${status.index + 1}</td> --%>
<%-- 							<td>${product.name}</td> --%>
<%-- 							<td>${product.categoryName}</td> --%>
<%-- 							<td>${product.price}</td> --%>
<%-- 							<td>${product.num}</td> --%>
<%-- <%-- 							<th>${product.status}</th> --%> 
<%-- 							<td><a href="productEdit?id=${product.id}"><i class="icon-pencil"></i></a> <a --%>
<!-- 								href="#myModal" role="button" data-toggle="modal"><i -->
<!-- 									class="icon-remove"></i></a></td> -->
<!-- 						</tr> -->
<%-- 						</c:forEach> --%>
					</tbody>
				</table>
			</div>
<!-- 			<div class="pagination"> -->
<!-- 				<ul> -->
<!-- 					<li><a href="#">Prev</a></li> -->
<!-- 					<li><a href="#">1</a></li> -->
<!-- 					<li><a href="#">2</a></li> -->
<!-- 					<li><a href="#">3</a></li> -->
<!-- 					<li><a href="#">4</a></li> -->
<!-- 					<li><a href="#">Next</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</div>
<script src="<%=basePath%>/js/jquery.dataTables.js"></script>
<script src="<%=basePath%>/js/dataTables.bootstrap.js"></script>
<script src="<%=basePath%>/common/bootstrap.min_v2.js"></script>
<script src="<%=basePath%>/js/admin/product.js"></script>
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

