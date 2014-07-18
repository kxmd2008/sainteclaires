<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- <jsp:include page="head.jsp"></jsp:include> --%>
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
		<h1 class="page-title">新增产品</h1>
	</div>

	<ul class="breadcrumb">
		<li><a href="#">Home</a> <span class="divider">/</span></li>
		<li class="active">产品</li>
	</ul>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="btn-toolbar">
				<button class="btn btn-primary" onclick="saveCategory();">
					<i class="icon-save"></i> 保存
				</button>
				<div class="btn-group"></div>
			</div>
			<div class="well ">
				<form id="tab" action="<%=basePath%>/auth/category/add.do" method="post">
					<label>产品名称</label> 
					<input type="text" value="" class="input-xlarge" name="name"> 
					<label>产品价格</label> 
					<input type="text" value="" class="input-xlarge" name="price"> 
					<label>产品库存</label> 
					<input type="text" value="" class="input-xlarge" name="num"> 
					<label>产品尺码</label> 
					<select multiple name="productSize" id="productSize" class="input-xlarge">
						<option value="">X</option>
						<option value="">X1</option>
						<option value="">X2</option>
					</select>
				</form>
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


