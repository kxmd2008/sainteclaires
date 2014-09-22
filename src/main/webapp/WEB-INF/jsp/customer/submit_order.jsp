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
<jsp:include page="../head.jsp" />
<style>
.fontSize {
	font-size: 12px;
	color: #838383;
	font-weight: bold;
}

.center {
	margin-left: auto !important;
	margin-right: auto !important;
	float: none !important;
	display: block;
	text-align: center;
}

.list-inline>div {
	display: inline-block;
	padding-right: 0px;
	padding-left: 5px;
}

.box {
	width: 23%;
	border: 2px dashed #C2C8CF;
	line-height: 2;
	vertical-align: top;
	margin: 1%;
	min-height: 124px;
}

.list-inline  div:hover {
	box-shadow: 6px 6px 6px rgba(0, 0, 0, 0.2);
	opacity: 0.9;
}
</style>
</head>
<body>
	<div id="cl-wrapper" class="strange" style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<jsp:include page="../header.jsp" />
			<div class="col-md-12" >
				<div class="col-md-9 center">
					<div class="col-md-12" style="margin-top: 20px;">
						<img src="<%=basePath%>/common/image/logo_txt.png" class="pull-left" />
					</div>
					<div class="col-md-12">
						<img alt="" src="<%=basePath%>/common/image/submit_order.jpg"
							style="width: 100%;">
					</div>
					<div class="col-md-12" style="margin-top: 10px; height: 20px;">
						<div class="pull-left fontSize">选择收货地址</div>
						<hr style="width: 100%; border: 1px solid #F0F0F0;" />
					</div>
					<div class="col-md-12"
						style="margin-top: 10px; min-height: 140px; height: 100%;">
						<div class="list-inline pull-left col-md-12" id="address_box">
							<c:forEach items="${addresses}" var="address" varStatus="status">
								<div class="pull-left box">
									<ul class="list-unstyled"
										style="padding: 8px; margin-bottom: 0px;">
										<li style="text-align: left; font-size: 10px;">${address.custName}
											收</li>
										<li><hr style="margin-top: 0px; margin-bottom: 5px;"></li>
										<li style="text-align: left; font-size: 10px;">${address.address }
											${address.telphone} ${address.post }</li>
									</ul>
									<c:choose>
										<c:when test="${custAccount.addressId == address.id}">
											<div
												style="width: 60px; height: 26px; background: #D3D3D3; padding-right: -5px; display: block;"
												class="pull-right">
												<label class="fontSize"
													style="font-size: 8px; font-weight: normal;"><font
													color='white'>默认地址</font></label>
											</div>
										</c:when>
										<c:otherwise>
											<div
												style="width: 60px; height: 26px; background: #D3D3D3; padding-right: -5px; display: none;"
												class="pull-right">
												<label class="fontSize"
													style="font-size: 8px; font-weight: normal;"><font
													color='white'>默认地址</font></label>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="col-md-12" style="height: 40px;">
						<div class="pull-right fontSize">
							<a href="#">管理收货地址</a>
						</div>
					</div>
					<div class="col-md-12" style="height: 20px;">
						<div class="pull-left fontSize">确认订单信息</div>
					</div>
					<div class="col-md-12" style="min-height: 160px; height: 100%;">
						<hr
							style="width: 100%; border: 1px solid #F0F0F0; margin-bottom: 0px; margin-top: 5px;" />
						<div class="table-responsive">
						<table class="table no-border hover">
							<thead class="no-border">
								<tr>
									<th>商品</th>
									<th>属性</th>
									<th>单价</th>
									<th>数量</th>
									<th>小计</th>
									<th>配送方式</th>
								</tr>
							</thead>
							<tbody class="no-border-y">
								<c:forEach items="${order.items }" var="item">
									<tr>
										<td>
											<ul class="list-unstyled list-inline"
												style="vertical-align: middle; margin-bottom: 0px;text-align: left;">
												<li><a class="cart_list_product_img" href="<%=basePath%>/detail?id=${item.productId }">
													<img src="<%=basePath%>/${item.pic}" width="75" height="75"/></a></li>
												<li><label class="fontSize"
													style="vertical-align: middle; font-weight: normal;">${item.productName}</label></li>
											</ul>
										</td>
										<td style="vertical-align: middle">
											<ul class="list-unstyled"
												style="vertical-align: middle; margin-bottom: 0px;text-align: left;">
												<li>尺码：${item.size }</li>
											</ul>
										</td>
										<td style="vertical-align: middle;text-align: left;">${item.price }</td>
										<td style="vertical-align: middle;text-align: left;" class="">
											<div class="input-group"
												style="width: 103px; margin-right: auto !important; float: none !important; text-align: left;">
												<span class="input-group-btn">
													<button class="btn btn-default bootstrap-touchspin-down"
														type="button" onclick="delNumber();">-</button>
												</span> <input id="cleaninit" type="text" class="form-control"
													name="cleaninit" style="width: 40px;" value="${item.num}" />
												<span class="input-group-btn">
													<button class="btn btn-default bootstrap-touchspin-down"
														type="button" onclick="addNumber();">+</button>
												</span>
											</div>
										</td>
										<td style="vertical-align: middle;text-align: left;"><font color="red">${item.num*item.price }</font></td>
										<td style="vertical-align: middle;text-align: left;">快递：包邮</td>
									</tr>
								</c:forEach>
							</tbody>
							<tfoot>
								<td colspan="6" class=""><label class="pull-right fontSize">合计（含运费）：￥${order.amount }</label></td>
							</tfoot>
						</table>
						</div>
						<hr
							style="width: 100%; border: 1px solid #F0F0F0; margin-bottom: 0px; margin-top: 0px;" />
					</div>
					<div class="col-md-12">
						<div class="pull-right">
							<label class="fontSize">实付款：</label><font
								style="font-size: 20px; color: red; font-weight: bold;">￥${order.amount }</font>
						</div>
					</div>
					<div class="col-md-12" style="margin-top: 40px;">
						<div class="pull-right">
							<button type="button" class="btn btn-default"
								style="background: red; width: 150px;">
								<font color="white">提交订单</font>
							</button>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="add_address" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" style="font-weight: bold;">添加收货地址</h4>
						</div>
						<div class="modal-body">
							<form class="form-horizontal" role="form">
								<div class="form-group">
									<label for="username" class="col-sm-2 control-label fontSize">收件人</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="username"
											placeholder="收件人" style="font-size: 10px;">
									</div>
								</div>
								<div class="form-group">
									<label for="telphone" class="col-sm-2 control-label fontSize">电话号码</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="telphone"
											placeholder="电话号码" style="font-size: 10px;">
									</div>
								</div>
								<div class="form-group">
									<label for="postcode" class="col-sm-2 control-label fontSize">邮编</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" id="postcode"
											placeholder="邮编" style="font-size: 10px;">
									</div>
								</div>
								<div class="form-group">
									<label for="detail" class="col-sm-2 control-label fontSize">详细地址</label>
									<div class="col-sm-10">
										<!-- 			      <input type="text" class="form-control" id="detail" placeholder="详细地址"> -->
										<textarea rows="3" cols="3" id="detail" class="form-control"
											placeholder="详细地址" style="font-size: 10px;"></textarea>
									</div>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="button" class="btn btn-primary"
								onclick="addAddress();">保存</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /-->
		</div>
	</div>
	<script src="<%=path%>/common/jquery.js" type="text/javascript"></script>
	<script src="<%=path%>/common/bootstrap.min.js" type="text/javascript"></script>
	<script src="<%=path%>/js/customer/submit_order.js"></script>
</body>
</html>