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
		<h1 class="page-title">类别管理</h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">

			<div class="btn-toolbar">
				<a class="btn btn-primary"  href="#" role="button" data-toggle="modal" onclick="showDlg('新增类别')">
					<i class="icon-plus"></i> 创建类别
				</a>
				<div class="btn-group"></div>
			</div>
			<div class="well">
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>所属种类</th>
							<th>种类名称</th>
<!-- 							<th>Username</th> -->
							<th style="width: 26px;"></th>
						</tr>
					</thead>
					<tbody id="tbody">
						
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
			
			<div class="modal medium hide fade" id="catModel" tabindex="-1"
				role="dialog" aria-labelledby="catLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="catLabel">新增类别</h3>
				</div>
				<div class="modal-body">
					<form id="tab" action="<%=basePath%>/auth/category/add.do" method="post">
						<input type="hidden" name="id" id="id" value="">
						<input type="hidden" name="parentName" id="parentName" value="">
						<label>所属种类</label> 
						<select class="input-xlarge"  name="parentId" id="parentId" onchange="parentChange(this.value)">
							<option>
<%-- 							<c:forEach items="${parents }"  var="pcat"> --%>
<%-- 							<option value="${pcat.id }" id="option${pcat.id}">${pcat.name }</option> --%>
<%-- 							</c:forEach> --%>
						</select>
						<label>类别名称</label> 
						<input type="text" value="" class="input-xlarge" name="name" id="cname"> 
						<label>序列</label> 
						<input type="text" value="" class="input-xlarge" name="orderNo" id="orderNo"> 
					</form>
					
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
					<button class="btn btn-danger" data-dismiss="modal" onclick="saveCategory();">保存</button>
				</div>
			</div>

			<div class="modal small hide fade" id="myModal" tabindex="-1"
				role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="myModalLabel">Delete Confirmation</h3>
				</div>
				<div class="modal-body">
					<p class="error-text">
						<i class="icon-warning-sign modal-icon"></i>确定要删除此类别？
					</p>
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
					<button class="btn btn-danger" data-dismiss="modal" onclick="deleteCategory();">Delete</button>
				</div>
			</div>
			<input type="hidden"  id="catId" value="">
			<input type="hidden"  id="rowIndex" value="">
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</div>



<script src="<%=basePath%>/common/bootstrap.min_v2.js"></script>
<%-- <script src="<%=basePath%>/js/admin/main.js"></script> --%>
<script src="<%=basePath%>/js/admin/category.js"></script>
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

