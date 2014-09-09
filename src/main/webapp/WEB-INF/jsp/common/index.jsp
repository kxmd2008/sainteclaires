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
<link href="./css/magnific-popup.css" rel="stylesheet" />
<link href="./css/bgstretcher.css" rel="stylesheet">
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
.fontSize{
	font-size: 12px;
	color: #838383;
	font-weight : bold;
}
.icon-close:before{
	content: "";
}
/* .dropdown-menu { */
/* 	padding: 10px 0; */
/* 	margin: 10px 0 0; */
/* 	border: 1px solid #ccc; */
/* 	 border: 1px solid rgba(0, 0, 0, .15);  */
/* 	 border-radius: 4px;  */
/* 	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175); */
/* 	box-shadow: 0 6px 12px rgba(0, 0, 0, .175); */
/* } */
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
					<div class="page-head"	style="height: 75px; width: 100%; display: table;">
						<ol class="breadcrumb" style="padding-top: 35px;">
							<li class="mini-cart">
								<div class="cart-inner">
									<div class="dropdown" id="show_tooltip">
										<a href="http://www.sainteclaire.es/carro/" class="cart-link"
											data-toggle="dropdown"> <strong
											class="cart-name hide-for-small">Cesta</strong> <span
											class="cart-price hide-for-small">/ <span
												class="amount">34,90￥</span></span>
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
				</div>
				</li>
				</ol>
			</div>
				
					<div class="row">
						<div class="large-6 columns product-gallery">
							<div class="product-image images">
								<div class="iosSlider product-gallery-slider"
									style="position: relative; top: 0px; left: 0px; overflow: hidden; z-index: 0; -webkit-perspective: 1000px; -webkit-backface-visibility: hidden; min-height: 509px; width: 510px; height: auto;">
									<div class="slider gallery-popup"
										style="position: relative; cursor: -webkit-grab; -webkit-perspective: 0; -webkit-backface-visibility: hidden; left: 0px; width: 500px;">
										<div class="slide"
											style="-webkit-backface-visibility: hidden; overflow: hidden; position: absolute; left: 0px; width: 500px;">
												<a title="" class="image-popup-vertical-fit" href="./product/imgs/${product.pics }">
													<img width="75" height="75" src="./product/imgs/${product.pics }">
												</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="product-info large-4 small-12 columns left">
							<h1 itemprop="name" class="entry-title">${product.name }</h1>
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
										disabled="disabled">加入购物车</button>
									<div class="quantity buttons_added">
										<input type="button" value="-" class="minus"><input
											type="number" step="1" name="quantity" value="1" title="Qty"
											class="input-text qty text" min="1"><input
											type="button" value="+" class="plus">
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
							<div class="social-icons share-row">
								<a
									href="http://www.facebook.com/sharer.php?u=http://www.sainteclaire.es/en/tienda/bebe/chaqueta-bebe-rosa/&images=http://www.sainteclaire.es/wp-content/uploads/2014/07/chaqueta-bebe-rosa-150x150.jpg"
									target="_blank" class="icon facebook tip-top"
									data-tip="Compartir en Facebook"><span
									class="icon-facebook"></span> </a> <a
									href="https://twitter.com/share?url=http://www.sainteclaire.es/en/tienda/bebe/chaqueta-bebe-rosa/"
									target="_blank" class="icon twitter tip-top"
									data-tip="Compartir en Twitter"><span class="icon-twitter"></span>
								</a> <a
									href="mailto:enteryour@addresshere.com?subject=%28Espa%C3%B1ol%29%20Chaqueta%20beb%C3%A9%20rosa&body=Check%20this%20out:%20http://www.sainteclaire.es/en/tienda/bebe/chaqueta-bebe-rosa/"
									class="icon email tip-top" data-tip="Compartir por Email"><span
									class="icon-envelop"></span> </a> <a
									href="http://pinterest.com/pin/create/button/?url=http://www.sainteclaire.es/en/tienda/bebe/chaqueta-bebe-rosa/&media=http://www.sainteclaire.es/wp-content/uploads/2014/07/chaqueta-bebe-rosa-150x150.jpg&description=%28Espa%C3%B1ol%29%20Chaqueta%20beb%C3%A9%20rosa"
									target="_blank" class="icon pintrest tip-top"
									data-tip="Compartir en Pinterest"><span
									class="icon-pinterest"></span></a>
							</div>
						</div>
						<div class="product-page-aside large-2 small-12 columns text-center hide-for-small" style="width: 100px;">
							<div class="next-prev-nav">
								<div class="prod-dropdown">
									<a href="http://www.sainteclaire.es/en/tienda/bebe/bombacho-pana-gris/"
										rel="next" ><span class="glyphicon glyphicon-chevron-left"></span></a>
									<div class="nav-dropdown" style="display: none;">
										<a
											href="http://www.sainteclaire.es/en/tienda/bebe/bombacho-pana-gris/"><img
											width="90" height="90"
											src="./product/imgs/DSC6610-90x90.jpg"
											class="attachment-shop_thumbnail wp-post-image"
											alt="_DSC6610"></a>
									</div>
								</div>
								<div class="prod-dropdown">
									<a href="http://www.sainteclaire.es/en/tienda/bebe/chaqueta-bebe-gris/"
										rel="prev" ><span class="glyphicon glyphicon-chevron-right"></span></a>
									<div class="nav-dropdown" style="display: none;">
										<a
											href="http://www.sainteclaire.es/en/tienda/bebe/chaqueta-bebe-gris/"><img
											width="90" height="90"
											src="./product/imgs/DSC6646-90x90.jpg"
											class="attachment-shop_thumbnail wp-post-image"
											alt="_DSC6646"></a>
									</div>
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
	<script src="<%=basePath%>/js/jquery.magnific-popup.min.js"></script>
	<script src="<%=basePath%>/js/common/detail.js"></script>
	<script type="text/javascript">
		var link = $('link[href="css/style.css"]');
		if ($.cookie("css")) {
			link.attr("href", 'css/skin-' + $.cookie("css") + '.css');
		}
		$(document).ready(treeToggler);
	</script>
</body>
</html>