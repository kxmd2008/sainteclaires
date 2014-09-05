<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>Login Page</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<link href="<%=path%>/common/bootstrap.css" rel="stylesheet"
	type="text/css" />
<link href="<%=path%>/common/bootstrap.responsive.css" rel="stylesheet"
	type="text/css" />
<style>
.fontSize{
	font-size: 12px;
	color:#838383;
	font-weight: bold;
}
.center{
	margin-left: auto !important;
	margin-right: auto !important;
	float:none !important;
	display: block;
	text-align:center;
}
.list-inline > div {
  display: inline-block;
  padding-right: 0px;
  padding-left: 5px;
}
.box{
	width:23%;
	border :2px dashed #C2C8CF;
	line-height: 2;
	vertical-align: top;
	margin:1%;
	min-height:124px;
}
.list-inline  div:hover{  
    box-shadow: 6px 6px 6px rgba(0,0,0,0.2);  
    opacity: 0.9;
} 
</style>
</head>
<body class="login">
	<!-- BEGIN LOGIN -->
	<div class="col-md-12" >
		<div class="col-md-9 center">
			<div class="col-md-12" style="margin-top:20px;">
				<img src="<%=basePath%>/common/image/logo_txt.png" class="pull-left"/>
			</div>
			<div class="col-md-12" style="height:20px;">
				<div class="pull-left fontSize" >查看订单信息</div>
			</div>
			<div class="col-md-12" style="min-height:160px;height:100%;">
				<hr style="width:100%;border:1px solid #F0F0F0;margin-bottom:0px;margin-top:5px;" />
				<table class="table table-hover fontSize" style="font-weight:normal;margin-bottom:0px;">
					<thead>
						<tr>
							<td>商品</td>
							<td>属性</td>
							<td>单价</td>
							<td>数量</td>
							<td>小计</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><img src="<%=basePath%>/common/image/qunzi.jpg"/><label class="fontSize" style="vertical-align: middle;font-weight: normal;">儿童连体裙</label></td>
							<td style="vertical-align: middle"><ul class="list-unstyled" style="vertical-align: middle"><li>颜色分类：红色</li><li>尺码：M</li></ul></td>
							<td style="vertical-align: middle">125.00</td>
							<td style="vertical-align: middle" class="">1
							</td>
							<td style="vertical-align: middle"><font color="red">125.00</font></td>
							<td style="vertical-align: middle"><button type="button" class="btn btn-primary">确认收货</button></td>
						</tr>
					</tbody>
<!-- 					<tfoot> -->
<!-- 						<td colspan="6" class=""><label class="pull-right fontSize">合计（含运费）：￥125.00</label></td> -->
<!-- 					</tfoot> -->
				</table>
				<hr style="width:100%;border:1px solid #F0F0F0;margin-bottom:0px;margin-top:0px;" />
			</div>
		</div>
	</div>
	<script src="<%=path%>/common/jquery.js" type="text/javascript"></script>
	<script src="<%=path%>/common/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/customer/submit_order.js"></script>
</body>
</html>