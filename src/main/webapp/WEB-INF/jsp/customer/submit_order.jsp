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
  padding-right: 5px;
  padding-left: 5px;
}
</style>
</head>
<body class="login">
	<!-- BEGIN LOGIN -->
	<div class="col-md-12" >
		<div class="col-md-8 center">
			<div class="col-md-12 ">
				<img src="<%=basePath%>/common/image/logo_txt.png" class="pull-left"/>
			</div>
			<div class="col-md-12">
				<img alt="" src="<%=basePath%>/common/image/submit_order.jpg" style="width:830px;">
			</div>
			<div class="col-md-12" style="margin-top:10px;height:20px;">
				<div class="pull-left fontSize" >选择收货地址</div>
			</div>
			<div class="col-md-12" style="margin-top:10px;min-height:140px;height:100%;">
				<div class="list-inline pull-left">
					<div style="width:180px; border:1px solid;line-height: 2;vertical-align: top;" class="pull-left">
						<ul class="list-unstyled" style="padding:8px;">
							<li style="text-align:left;font-size:10px;">辽宁大连(李凤超  收)</li>
							<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
							<li style="text-align:left;font-size:10px;">和平张自忠路 162 号 见他公寓二单元 2713号 18602131588</li>
						</ul>
					</div>
					<div style="width:180px; border:1px solid;line-height: 2;margin-left:33px;vertical-align: top;" class="pull-left">
						<ul class="list-unstyled" style="padding:8px;">
							<li style="text-align:left;font-size:10px;">辽宁大连(李凤超  收)</li>
							<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
							<li style="text-align:left;font-size:10px;">和平张自忠路 162 号 见他公寓二单元 2713号 18602131588</li>
						</ul>
					</div>
					<div style="width:180px; border:1px solid;line-height: 2;margin-left:33px;vertical-align: top;" class="pull-left">
						<ul class="list-unstyled" style="padding:8px;">
							<li style="text-align:left;font-size:10px;">辽宁大连(李凤超  收)</li>
							<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
							<li style="text-align:left;font-size:10px;">和平张自忠路 162 号 见他公寓二单元 2713号 18602131588</li>
						</ul>
					</div>
					<div style="width:180px; border:1px solid;line-height: 2;margin-left:33px;min-height:130px;height:100%;vertical-align: top;" class="pull-left">
						<ul class="list-unstyled" style="padding:8px;">
							<li style="text-align:left;font-size:10px;">添加收货地址</li>
							<li><hr style="margin-top:0px;margin-bottom:5px;"></li>
							<li style="text-align:left;font-size:10px;padding:0px;margin:0px auto;clear:both"><img src="<%=basePath%>/common/image/jiahao.jpg" width="24px;" height="24px;" style="clear:both;"/></li>
<!-- 							<li style="text-align:left;font-size:10px;">和平张自忠路 162 号 见他公寓二单元 2713号 18602131588</li> -->
						</ul>
					</div>
				</div>
			</div>
			<div class="col-md-12" style="height:20px;">
				<div class="pull-right fontSize" style="margin-top:10px;"><a href="#">管理收货地址</a></div>
			</div>
			<div class="col-md-12" style="height:20px;">
				<div class="pull-left fontSize" style="margin-top:40px;">确认订单信息</div>
			</div>
			<div class="col-md-12" style="min-height:210px;height:100%;">
				<div style="margin-top:10px;padding-top:10px;"><hr style="width:100%;border:1px solid #C1C1C1;" /></div>
				<table class="table table-hover">
					<thead>
						<tr>
							<td>商品</td>
							<td>属性</td>
							<td>单价</td>
							<td>数量</td>
							<td>小计</td>
							<td>配送方式</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><img src="<%=basePath%>/common/image/qunzi.jpg"/><label class="fontSize" style="vertical-align: middle">儿童连体裙</label></td>
							<td><ul class="list-unstyled"><li>颜色分类：红色</li><li>尺码：M</li></ul></td>
							<td>125.00</td>
							<td>1</td>
							<td><font color="red">125.00</font></td>
							<td>快递：包邮</td>
						</tr>
					</tbody>
					<tfoot>
						<td colspan="6" class=""><label class="pull-right fontSize">合计（含运费）：￥125.00</label></td>
					</tfoot>
				</table>
				<div style=""><hr style="width:100%;border:1px solid #C1C1C1;" /></div>
			</div>
			<div class="col-md-12">
				<div class="pull-right"><label class="fontSize">实付款：</label><font style="font-size:20px;color:red;font-weight:bold;">￥125.00</font></div>
			</div>
			<div class="col-md-12" style="margin-top:40px;">
				<div class="pull-right"><button type="button" class="btn btn-default" style="background:red;width:150px;"><font color="white">提交订单</font></button></div>
			</div>
		</div>
	</div>
	<script src="<%=path%>/common/jquery.js" type="text/javascript"></script>
	<script src="<%=path%>/common/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/customer/login.js"></script>
</body>
</html>