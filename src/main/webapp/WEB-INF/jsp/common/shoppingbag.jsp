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
<jsp:include page="../head.jsp"/>
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
/* 	display: block; */
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
	border: 3px solid #ccc;
	border: 3px solid rgba(0, 0, 0, .15);
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
			<jsp:include page="../header.jsp"/>
			<div class="cl-mcont aside">
				<jsp:include page="../left.jsp"/>
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
												style="min-width: 330px;min-height:270px;padding:25px; ">
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
															<span class="amount" style="color:#3d3d3d;margin-left:0px;margin-right:0px;">34,90€</span> /<span class="amount" style="color:#777777">Cantidad:1</span>
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
							
								<div class="col-sm-6 col-md-6 col-lg-6">
									<!-- 							<div class="block-flat"> -->
									<div class="product-image">
										<a href="<%=basePath%>/detail?id=${product.id}" >
										<div class="front-image">
											<img width="500" height="500"
												src="./product/imgs/${product.pics}"
												class="attachment-shop_catalog wp-post-image" alt="_DSC6436">
										</div>
										</a>
										<div class="quick-view" data-prod="12101" data-toggle="modal" data-target="#myModal">+ Vista rápida</div>
									</div>
									<div class="info text-center">
										<p class="name">${product.name}</p>
										<span class="price"><span class="amount">${product.price}</span></span>
									</div>
								</div>
							</c:forEach>
						</div>
						<!-- end row -->
					</div>
				</div>
			</div>
			<jsp:include page="../footer.jsp"/>
		</div>
	</div>
	
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog" style="min-width:830px;">
	    <div class="modal-content" >
	      <div class="modal-header" style="padding-top:0px;padding-bottom:0px;padding-right:5px;">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
<!-- 	        <h4 class="modal-title" id="myModalLabel">Modal title</h4> -->
	      </div>
	      <div class="modal-body" style="padding-top:0px;padding-bottom:0px;">
	        <div class="content">
				
					<div class="row">
						<div class="large-7 columns product-gallery">
							<div class="product-image images">
								<div class="iosSlider product-gallery-slider"
									style="position: relative; top: 0px; left: 0px; overflow: hidden; z-index: 0; -webkit-perspective: 1000px; -webkit-backface-visibility: hidden; min-height: 509px; width: 510px; height: auto;">
									<div class="slider gallery-popup"
										style="position: relative; cursor: -webkit-grab; -webkit-perspective: 0; -webkit-backface-visibility: hidden; left: 0px; width: 500px;">
										<div class="slide"
											style="-webkit-backface-visibility: hidden; overflow: hidden; position: absolute; left: 0px; width: 500px;">
												<a title="" class="image-popup-vertical-fit" href="./product/imgs/${product.pics }">
													<img width="75" height="75" src="./product/imgs/DSC6436-500x500.jpg">
												</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="product-info large-5 small-12 columns left">
							<h1 itemprop="name" class="entry-title">${product.name }dfdfdfdfd</h1>
							<div class="tx-div small"></div>
							<div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
								<p itemprop="price" class="price large">
									<span class="amount">${product.price }</span>
								</p>
								<meta itemprop="priceCurrency" content="EUR">
								<link itemprop="availability" href="http://schema.org/InStock">
							</div>
							<div class="variations variations_form cart custom">
								<h6>Size</h6>
								<div class="value pa_talla alt">
									<div class="select-wrapper">
										<select id="pa_talla" name="attribute_pa_talla">
											<option value="">选择尺码</option>
											<option value="0-meses" class="active">0 meses</option>
											<option value="3m" class="active">03 Meses</option>
											<option value="6m" class="active">06 Meses</option>
											<option value="9m" class="active">09 Meses</option>
											<option value="12m" class="active">12 Meses</option>
										</select>
									</div>
								</div>
							</div>
							<div class="clear"></div>
							<div class="single_variation_wrap" style="display: block;">
								<div class="single_variation"></div>
								<div class="variations_button">
									<input type="hidden" name="variation_id" value="">
									<button type="submit"
										class="single_add_to_cart_button button1 secondary alt"
										disabled="disabled" style="padding:7px;width:150px;">加入购物车</button>
									<div class="quantity buttons_added">
										<input
											type="number" step="1" name="quantity" value="1" title="Qty"
											class="input-text qty text" min="1">
									</div>
								</div>
							</div>
							<div>
								<input type="hidden" name="product_id" value="12132">
							</div>
							<div class="product_meta">
								<span itemprop="productID" class="sku_wrapper">SKU: <span
									class="sku" data-o_sku="S805 R">S805 R</span>.
								</span> <span class="posted_in">Categories: <a
									href="http://www.sainteclaire.es/en/product-category/bebe/"
									rel="tag">Baby</a>, <a
									href="http://www.sainteclaire.es/en/product-category/primera-puesta/"
									rel="tag">Newborn Essentials</a>, <a
									href="http://www.sainteclaire.es/en/product-category/bebe/punto-bebe/"
									rel="tag">Cardigans and sweaters</a>, <a
									href="http://www.sainteclaire.es/en/product-category/primera-puesta/punto-primera-puesta/"
									rel="tag">Cardigans and sweaters</a>.
								</span>
							</div>
						</div>
					</div>
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
</body>
</html>