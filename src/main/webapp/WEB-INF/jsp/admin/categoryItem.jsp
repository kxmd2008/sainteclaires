<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- <jsp:include page="head.jsp"></jsp:include> --%>
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="../css/bootstrap/css/bootstrap.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="../css/theme.css"> -->
<!-- <link rel="stylesheet" href="../css/font-awesome/css/font-awesome.css"> -->
<!-- <script src="../js/jquery-1.8.1.min.js" type="text/javascript"></script> -->
<%
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path; 
%>
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
<jsp:include page="main.jsp"></jsp:include>

<div class="content">

	<div class="header">
		<h1 class="page-title">New Category</h1>
	</div>

	<ul class="breadcrumb">
		<li><a href="#">Home</a> <span class="divider">/</span></li>
		<li class="active">Category</li>
	</ul>

	<div class="container-fluid">
		<div class="row-fluid">

			<div class="btn-toolbar">
				<button class="btn btn-primary" onclick="saveCategory();">
					<i class="icon-save"></i> Save
				</button>
				<div class="btn-group"></div>
			</div>
			<div class="well ">
				<form id="tab" action="<%=basePath%>/auth/category/add.do" method="post">
					<label>Parent Category</label> 
					<input type="text" value="" class="input-xlarge" name="parentId"> 
					<label>Category Name</label> 
					<input type="text" value="" class="input-xlarge" name="name"> 
					<label>Order</label> 
					<input type="text" value="" class="input-xlarge" name="orderNo"> 
				</form>
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
						<i class="icon-warning-sign modal-icon"></i>Are you sure you want
						to delete the user?
					</p>
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

<%-- <script src="<%=basePath%>/js/bootstrap.min.js"></script> --%>
<script src="<%=basePath%>/js/admin/main.js"></script>
<script type="text/javascript">
	$("[rel=tooltip]").tooltip();
	$(function() {
		$('.demo-cancel-click').click(function() {
			return false;
		});
	});
</script>


