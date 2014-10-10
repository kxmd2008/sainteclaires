<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
						<div class="block-flat">
							<p style="line-height: 2; font-weight: bold;"><s:message code="shoppingbag.name"/></p>
							<div class="content">
								<div class="cl col-md-8"
									style="padding-left: 0px; padding-right: 0px;">
									<div class="table-responsive">
										<table class="table no-border hover">
											<thead class="no-border">
												<tr>
													<th style="padding-left:0px;"><strong><s:message code="shoppingbag.thead.product"/></strong></th>
													<th><strong><s:message code="shoppingbag.thead.price"/></strong></th>
													<th><strong><s:message code="shoppingbag.num"/></strong></th>
													<th><strong><s:message code="shoppingbag.total"/></strong></th>
												</tr>
											</thead>
											<tbody class="no-border-y">
												<c:forEach var="shot" items="${shopingbag.items }">
												<tr id="trShot${shot.productId}">
													<td style="vertical-align: middle;">
														<ul class="list-unstyled list-inline" style="margin-bottom:0px;display:table;">
															<li style="vertical-align: middle;display:table-cell;padding-left:0px;">
																<a class="remove" title="Remove this item" style="vertical-align: middle;"
																href="./shot/delete/${shot.productId }"><span
																class="icon-close"><span
																	class="glyphicon glyphicon-remove"
																	style="margin: 0 2px;"></span></span></a>
															</li>
															<li style="vertical-align: middle;display:table-cell;">
																<div style="width: 90px;height: 90px;">
																<a class="cart_list_product_img"
																	href="./detail?id=${shot.productId }"><img
																	width="90px" height="90px"
																	src="<%=basePath%>/${shot.pic }"
																	class="attachment-shop_thumbnail wp-post-image"
																	alt="chaqueta bebe rosa"></a>
																</div>
															</li>
															<li style="vertical-align: middle;display:table-cell;"><div><span class="detailFont">${shot.productName }</span> </div><div><span
																class="detailFont"><s:message code="shoppingbag.size"/>：${shot.size }</span></div></li>
														</ul>
													</td>
													<td style="vertical-align: middle;">￥${shot.price }</td>
													<td style="vertical-align: middle;"><div class="quantity buttons_added">
															<input type="button" value="-" class="minus" onclick="delNumber('cleaninit1${shot.id }', ${shot.productId});">
															<input id="cleaninit1${shot.id }" style="margin-bottom:0px;margin-left:-4px;margin-right:-4px;"
																type="number" step="1" name="quantity" value="${shot.num }" onblur="changeNum('cleaninit1${shot.id }',${shot.productId});"
																title="Qty" class="input-text qty text" min="1">
															<input type="button" value="+" class="plus" onclick="addNumber('cleaninit1${shot.id }', ${shot.productId});" >
														</div></td>
													<td style="vertical-align: middle;">￥<span id="sum${shot.productId}">${shot.num * shot.price }</span></td>
												</tr>
												</c:forEach>
											</tbody>
										</table>
									</div>
								</div>
								<div class="cl col-md-3"
									style="padding-left: 50px; padding-right: 0px;">
									<div class="">
										<table class="table no-border">
											<thead class="no-border">
												<tr>
													<th><strong><s:message code="shoppingbag.order.total"/></strong></th>
													<th></th>
												</tr>
											</thead>
											<tbody class="no-border-y">
												<tr>
													<td><s:message code="shoppingbag.order.sum"/></td>
													<td ><span id="totalAmount1">${shopingbag.amount }</span>￥</td>
												</tr>
												<tr>
													<td><s:message code="shoppingbag.order.yunshu"/></td>
													<td>6.00￥</td>
												</tr>
												<tr>
													<td><s:message code="shoppingbag.order.totalAmount"/></td>
													<td><span id="totalAmount2">${shopingbag.amount }</span>￥</td>
												</tr>
											</tbody>
										</table>
										<a href="./shop" class="button secondary expand uppercase"
											style="text-align: center; background: #aaaaaa; font-weight: bold; height: 35px; vertical-align: middle; color: white; margin-bottom: 0px; padding-top: 10px;"><s:message code="btn.continue"/></a>
										<a href="./order/confirm" class="button secondary expand uppercase"
											style="text-align: center; background: #aaaaaa; font-weight: bold; height: 35px; vertical-align: middle; color: white; margin-bottom: 0px; margin-top: 10px; padding-top: 10px;"><s:message code="btn.orderConfirm"/></a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- end row -->
				</div>
			</div>
			<jsp:include page="../footer.jsp"/>
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
	<script src="<%=basePath%>/js/customer/shoppingbag.js"></script>
	<script src="<%=basePath%>/css/bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
</body>
</html>