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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="<%=basePath%>/common/image/icon.png">
<title>Sainte Claire</title>
<link href="<%=basePath%>/css/bootstrap/css/bootstrap.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/jquery.gritter.css">
<link rel="stylesheet" href="<%=basePath%>/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=basePath%>/css/nanoscroller.css">
<link href="<%=basePath%>/css/style.css" rel="stylesheet">
<link href="./css/my.css" rel="stylesheet">
<link href="./css/product.css" rel="stylesheet">
<link href="./css/fonts.css" rel="stylesheet">

<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}

.box {
	position: absolute;
	top: 100%;
	/*   left: 0; */
	z-index: 1000;
	display: block;
	float: right;
	min-width: 160px;
	padding: 5px;
	margin: 2px 0 0;
	font-size: 14px;
	text-align: left;
	list-style: none;
	background-color: #fff;
	-webkit-background-clip: padding-box;
	background-clip: padding-box;
	border: 1px solid #ccc;
	border: 1px solid rgba(0, 0, 0, .15);
	border-radius: 4px;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 12px 12px rgba(0, 0, 0, .175);
}

#show_tooltip:hover .dropdown-menu {
	display: block;
}
.icon-close:before{
	content: "";
}
.fontSize {
	font-size: 12px;
	color: #838383;
	font-weight: bold;
}
</style>
</head>
<body class="animated cbp-spmenu-push" style="">
	<!-- 	<img src="images/Desert.jpg" class="stretch" id="bodyBgImg"> -->
	<div id="cl-wrapper" class="strange"
		style="opacity: 1; margin-left: 0px;">
		<div class="container-fluid" id="pcont">
			<div id="head-nav" class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-collapse">
						<ul class="nav navbar-nav navbar-right user-nav">
							<li class=""><a href="./index.do">home</a></li>
							<li class=""><a href="./shop.do">shop</a></li>
							<li class=""><a href="#">blog</a></li>
							<li class=""><a href="#">Changes</a></li>
							<li class=""><a href="#">contact</a></li>
							<c:if test="${ custAccount == null}">
								<li class=""><a href="login.do">Login</a></li> 
							</c:if>
							<c:if test="${ custAccount != null}">
								<li class=""><a href="logout.do">Login Out</a></li> 
							</c:if>
						</ul>
						<ul class="nav navbar-nav not-nav">
							<div style="margin-left: 20px;"></div>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
							<li class="button dropdown"><a href="javascript:;"> <img
									src="<%=basePath%>/common/image/icon_weibo_24.png"></a></li>
						</ul>

					</div>
				</div>
			</div>

			<div class="cl-mcont aside">
				<div class="page-aside tree">
					<div class="nano nscroller has-scrollbar">
						<div class="content" tabindex="0" style="right: -17px;">
							<div class="title">
								<img alt="Sainte Claire" title="Sainte Claire"
									src="<%=basePath%>/common/image/logo_txt.png">
							</div>
							<ul class="nav nav-list treeview">
								<c:forEach var="pcat" items="${parents}">
									<li class=""><label class="tree-toggler nav-header">${pcat.name }</label>
										<c:choose>
											<c:when test="${pcat.id == parentCatId }">
												<ul class="nav nav-list tree" style="display: block;">
											</c:when>
											<c:otherwise>
												<ul class="nav nav-list tree" style="display: none;">
											</c:otherwise>
										</c:choose>
											<c:forEach var="subcat" items="${subcatMap[pcat.id]}">
												<li><a href="./products.do?subCateId=${subcat.id }">${subcat.name }</a></li>
											</c:forEach>
										</ul></li>
								</c:forEach>
							</ul>
						</div>
						<div class="pane" style="display: none;">
							<div class="slider" style="height: 1117px; top: 0px;"></div>
						</div>
					</div>
				</div>
				<div class="content">
					<div class="row">
						<div class="page-head "
							style="height: 75px; width: 100%; display: table;">
							<ol class="breadcrumb" style="padding-top: 35px;">
								<li class="mini-cart">
									<div class="cart-inner">
										<div class="dropdown" id="show_tooltip">
											<a href="http://www.sainteclaire.es/carro/" class="cart-link"
												data-toggle="dropdown"> <strong
												class="cart-name hide-for-small">Cesta</strong> <span
												class="cart-price hide-for-small">/ <span
													class="amount">34,90€</span></span>
												<div class="cart-icon">
													<div class="custom-cart-inner">
														<div class="custom-cart-count">1</div>
														<img class="custom-cart-icon" src="./images/icon0531.png">
													</div>
												</div>
											</a>
											<ul class="dropdown-menu  pull-right box"
												style="min-width: 330px;min-height:270px;display:block;padding:25px; ">
												<li>
													<ul style="margin-left:0px;">
													<li>
													<div class="col-md-2" style="vertical-align:middle;padding-left:0px;padding-right:0px;">
														<a
															href="http://www.sainteclaire.es/carro/?remove_item=3788b64dde2e72ed4a6a5da0591ff11e&_n=4c29be2ee0"
															class="remove" title="Remove this item"><span
															class="icon-close"><span
																class="glyphicon glyphicon-remove" style="margin:0 2px;"></span></span></a>
													</div>
													<div class="col-md-7">
														<a class="cart_list_product_title fontSize"
															href="http://www.sainteclaire.es/tienda/bebe/chaqueta-bebe-rosa/" style="color:#3d3d3d;font-weight: bold;">(Español)
															Chaqueta bebé rosa</a>
														<div class="cart_list_product_price fontSize">
															<span class="amount" style="color:#3d3d3d">34,90€</span> /<span class="amount" style="color:#777777">Cantidad:1</span>
														</div>
														<!-- 													<div class="cart_list_product_quantity fontSize">Cantidad: -->
														<!-- 														1</div> -->
													</div>
													<div class="col-md-3">
														<a class="cart_list_product_img"
															href="http://www.sainteclaire.es/tienda/bebe/chaqueta-bebe-rosa/"><img
															width="90px" height="90px"
															src="<%=basePath%>/images/bebe.jpg"
															class="attachment-shop_thumbnail wp-post-image"
															alt="chaqueta bebe rosa"></a>
													</div>
													</li>
													</ul>
													<hr style="margin-bottom:8px;"/>
													<div class="minicart_total_checkout" style="color:#3d3d3d;font-weight: bold;">
														Total cesta<span><span class="amount" style="color:#000000">34,90€</span></span>
													</div> <!-- 														<a href="http://www.sainteclaire.es/carro/" -->
													<!-- 															class="button expand uppercase">Ver cesta</a> -->
													<a href="http://www.sainteclaire.es/realizar-pedido/"
													class="button secondary expand uppercase"
													style="text-align: center;background:#aaaaaa;font-weight: bold;height:35px;vertical-align: middle;color:white;margin-bottom:0px;margin-top:60px;padding-top:10px;">Proceder a la compra</a> <!-- 													</div> -->
													<!-- 												</div> -->
												</li>
											</ul>
										</div>
										<div class="nav-dropdown" style="display: none;">
											<div class="nav-dropdown-inner">
												<div class="cart_list">
													<div class="row mini-cart-item collapse">
														<div class="small-2 columns">
															<a
																href="http://www.sainteclaire.es/carro/?remove_item=8080a9e5cc9752ad111a2de3417e1a17&_n=4c29be2ee0"
																class="remove" title="Remove this item"><span
																class="icon-close"></span></a>
														</div>
														<div class="small-7 columns">
															<a class="cart_list_product_title"
																href="http://www.sainteclaire.es/tienda/bebe/chaqueta-bebe-rosa/">(Español)
																Chaqueta bebé rosa</a>
															<div class="cart_list_product_price">
																<span class="amount">34,90€</span> /
															</div>
															<div class="cart_list_product_quantity">Cantidad: 1</div>
														</div>
														<div class="small-3 columns">
															<a class="cart_list_product_img"
																href="http://www.sainteclaire.es/tienda/bebe/chaqueta-bebe-rosa/"><img
																width="90" height="90"
																src="./product/imgs/chaqueta-bebe-rosa-90x90.jpg"
																class="attachment-shop_thumbnail wp-post-image"
																alt="chaqueta bebe rosa"></a>
														</div>
													</div>
												</div>
												<div class="minicart_total_checkout">
													Total cesta<span><span class="amount">34,90€</span></span>
												</div>
												<a href="http://www.sainteclaire.es/carro/"
													class="button expand uppercase">Ver cesta</a> <a
													href="http://www.sainteclaire.es/realizar-pedido/"
													class="button secondary expand uppercase">Proceder a la
													compra</a>
											</div>
										</div>
									</div>
								</li>
							</ol>
						</div>
						<div class="row products">
							<c:forEach var="product" items="${products}">
							<a href="<%=basePath%>/detail.do?id=${product.id}">
								<div class="col-sm-6 col-md-6 col-lg-6">
									<!-- 							<div class="block-flat"> -->
									<div class="product-image">
										<div class="front-image">
											<img width="500" height="500"
												src="./product/imgs/${product.pics}"
												class="attachment-shop_catalog wp-post-image" alt="_DSC6436">
										</div>
										<div class="quick-view" data-prod="12101">+ Vista rápida</div>
									</div>
									<div class="info text-center">
										<p class="name">${product.name}</p>
										<span class="price"><span class="amount">${product.price}</span></span>
									</div>
								</div>
							</a>
							</c:forEach>
						</div>
						<!-- end row -->
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="<%=basePath%>/js/jquery.js"></script>
	<script src="<%=basePath%>/js/jquery.cookie.js"></script>
	<script src="<%=basePath%>/js/jPushMenu.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/js/jquery.nanoscroller.js"></script>
	<script type="text/javascript"
		src="<%=basePath%>/js/jquery.sparkline.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/jquery.gritter.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/core.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/common.js"></script>
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