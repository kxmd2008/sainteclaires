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
<style type="text/css">
td {
	vertical-align: middle;
}

.icon-close:before {
	content: "";
}

.fontSize {
	font-size: 12px;
	color: #838383;
	font-weight: bold;
}

.icon-close:before {
	content: "";
}

.detailFont {
	font-size: 12px;
}
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<jsp:include page="../header.jsp" />
			<div class="cl-mcont aside">
				<jsp:include page="../left.jsp" />
				<div class="content">
					<div class="row">
						<div style="min-height: 0px;"></div>
						<!-- 						<div class="col-sm-12 col-md-12"> -->
						<div class="block-flat">
							<p style="line-height: 2; font-weight: bold;">购物车</p>
							<div class="content">
								<div class="cl col-md-8"
									style="padding-left: 0px; padding-right: 0px;">
									<div class="table-responsive">
										<table class="table no-border hover">
											<thead class="no-border">
												<tr>
													<th><strong>商品</strong></th>
													<th><strong>价格</strong></th>
													<th><strong>数量</strong></th>
													<th><strong>总计</strong></th>
												</tr>
											</thead>
											<tbody class="no-border-y">
												<tr>
													<td>
														<div class="col-md-1"
															style="vertical-align: middle; padding-left: 0px; padding-right: 0px;">
															<a class="remove" title="Remove this item"
																href="http://www.sainteclaire.es/carro/?remove_item=3788b64dde2e72ed4a6a5da0591ff11e&_n=4c29be2ee0"><span
																class="icon-close"><span
																	class="glyphicon glyphicon-remove"
																	style="margin: 0 2px;"></span></span></a>
														</div>
														<div class="col-md-3"
															style="vertical-align: middle; padding-left: 5px; padding-right: 5px;">
															<a class="cart_list_product_img"
																href="http://www.sainteclaire.es/tienda/bebe/chaqueta-bebe-rosa/"><img
																width="90px" height="90px"
																src="<%=basePath%>/product/imgs/chaqueta-bebe-rosa-90x90.jpg"
																class="attachment-shop_thumbnail wp-post-image"
																alt="chaqueta bebe rosa"></a>
														</div>
														<div class="col-md-4">
															<span class="detailFont">男孩纯棉白色T恤</span> <span
																class="detailFont">尺码：6个月</span>
														</div>
													</td>
													<td>$25.2</td>
													<td><div class="quantity buttons_added">
															<input type="button" value="-" class="minus"
																onclick="delNumber()"> <input id="cleaninit1"
																type="number" step="1" name="quantity" value="1"
																title="Qty" class="input-text qty text" min="1">
															<input type="button" value="+" class="plus"
																onclick="addNumber()">
														</div></td>
													<td>444$</td>
												</tr>
												<tr>
													<td>
														<div class="col-md-1"
															style="vertical-align: middle; padding-left: 0px; padding-right: 0px;">
															<a class="remove" title="Remove this item"
																href="http://www.sainteclaire.es/carro/?remove_item=3788b64dde2e72ed4a6a5da0591ff11e&_n=4c29be2ee0"><span
																class="icon-close"><span
																	class="glyphicon glyphicon-remove"
																	style="margin: 0 2px;"></span></span></a>
														</div>
														<div class="col-md-3"
															style="vertical-align: middle; padding-left: 5px; padding-right: 5px;">
															<a class="cart_list_product_img"
																href="http://www.sainteclaire.es/tienda/bebe/chaqueta-bebe-rosa/"><img
																width="90px" height="90px"
																src="<%=basePath%>/product/imgs/chaqueta-bebe-rosa-90x90.jpg"
																class="attachment-shop_thumbnail wp-post-image"
																alt="chaqueta bebe rosa"></a>
														</div>
														<div class="col-md-4">
															<span class="detailFont">男孩纯棉白色T恤</span> <span
																class="detailFont">尺码：6个月</span>
														</div>
													</td>
													<td>$22.5</td>
													<td>
														<div class="quantity buttons_added">
															<input type="button" value="-" class="minus"
																onclick="delNumber()"> <input id="cleaninit2"
																type="number" step="1" name="quantity" value="1"
																title="Qty" class="input-text qty text" min="1">
															<input type="button" value="+" class="plus"
																onclick="addNumber()">
														</div>
													</td>
													<td>30</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="cl col-md-4"
									style="padding-left: 10px; padding-right: 0px;">
									<div class="">
										<table class="table no-border">
											<thead class="no-border">
												<tr>
													<th><strong>订单总计</strong></th>
													<th></th>
												</tr>
											</thead>
											<tbody class="no-border-y">
												<tr>
													<td>小计</td>
													<td>77￥</td>
												</tr>
												<tr>
													<td>运输</td>
													<td>6.00￥</td>
												</tr>
												<tr>
													<td>订单总额</td>
													<td>83￥</td>
												</tr>
											</tbody>
										</table>
										<a href="http://www.sainteclaire.es/realizar-pedido/" class="button secondary expand uppercase"
											style="text-align: center; background: #aaaaaa; font-weight: bold; height: 35px; vertical-align: middle; color: white; margin-bottom: 0px; padding-top: 10px;">继续购物</a>
										<a href="http://www.sainteclaire.es/realizar-pedido/" class="button secondary expand uppercase"
											style="text-align: center; background: #aaaaaa; font-weight: bold; height: 35px; vertical-align: middle; color: white; margin-bottom: 0px; margin-top: 10px; padding-top: 10px;">订单确认</a>
									</div>
								</div>
							</div>
						</div>
						<!-- 						</div> -->
					</div>
					<!-- end row -->
				</div>
			</div>
		</div>
	</div>

	<script src="<%=basePath%>/js/jquery.js"></script>
	<script src="<%=basePath%>/js/jquery.cookie.js"></script>
	<script src="<%=basePath%>/js/jPushMenu.js"></script>
	<script src="<%=basePath%>/js/jquery.nanoscroller.js"></script>
	<script src="<%=basePath%>/js/jquery.sparkline.min.js"></script>
	<script src="<%=basePath%>/js/jquery-ui.js"></script>
	<script src="<%=basePath%>/js/jquery.gritter.js"></script>
	<script src="<%=basePath%>/js/core.js"></script>
	<script src="<%=basePath%>/js/common.js"></script>
	<script src="<%=basePath%>/css/bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
	<a href="#" class="back-to-top" style="display: none;"><i
		class="fa fa-angle-up"></i></a>
</body>
</html>