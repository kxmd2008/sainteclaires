<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
<body>
<jsp:include page="main.jsp"></jsp:include>
<div class="content">
	<div class="header">
		<h1 class="page-title"><s:message code="category.mgt.title"/></h1>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">

			<div class="btn-toolbar">
				<a class="btn btn-primary"  href="#" role="button" data-toggle="modal" onclick="showDlg('<s:message code="category.mgt.new"/>')">
					<i class="icon-plus"></i> <s:message code="category.mgt.create"/>
				</a>
				<div class="btn-group"></div>
			</div>
			<div class="well">
				<table class="table table-striped table-bordered table-hover datatable" id="catogrys">
					<thead>
						<tr>
							<th>#</th>
							<th><s:message code="category.mgt.belong"/></th>
							<th><s:message code="category.mgt.name"/></th>
							<th style="width: 26px;"><s:message code="category.mgt.opration"/></th>
						</tr>
					</thead>
					<tbody id="tbody">
						
					</tbody>
				</table>
			</div>
			
			<div class="modal medium hide fade" id="catModel" tabindex="-1"
				role="dialog" aria-labelledby="catLabel" aria-hidden="true">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h3 id="catLabel"><s:message code="category.mgt.new" /></h3>
				</div>
				<div class="modal-body">
					<form id="tab" action="<%=basePath%>/auth/category/add" method="post">
						<input type="hidden" name="id" id="id" value="">
						<input type="hidden" name="parentName" id="parentName" value="">
						<label><s:message code="category.mgt.belong"/></label> 
						<select class="input-xlarge"  name="parentId" id="parentId" onchange="parentChange(this.value)">
							<option>
<%-- 							<c:forEach items="${parents }"  var="pcat"> --%>
<%-- 							<option value="${pcat.id }" id="option${pcat.id}">${pcat.name }</option> --%>
<%-- 							</c:forEach> --%>
						</select>
						<label><s:message code="category.mgt.name"/></label> 
						<input type="text" value="" class="input-xlarge" name="name" id="cname"> 
						<label><s:message code="category.mgt.order"/></label> 
						<input type="text" value="" class="input-xlarge" name="orderNo" id="orderNo"> 
					</form>
					
				</div>
				<div class="modal-footer">
					<button class="btn" data-dismiss="modal" aria-hidden="true"><s:message code="category.mgt.cancle"/></button>
					<button class="btn btn-danger" data-dismiss="modal" onclick="saveCategory();"><s:message code="category.mgt.save"/></button>
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
						<i class="icon-warning-sign modal-icon"></i><s:message code="category.mgt.delete.info"/>
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


<script src="<%=basePath%>/js/jquery.dataTables.js"></script>
<script src="<%=basePath%>/js/dataTables.bootstrap.js"></script>
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

