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
<link href="<%=basePath%>/css/bootstrap/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jquery.gritter.css">
<link rel="stylesheet" href="<%=basePath%>/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/nanoscroller.css">
<link href="<%=basePath%>/css/style.css" rel="stylesheet">
<link href="./css/my.css" rel="stylesheet">
<link href="./css/product.css" rel="stylesheet">
<link href="./css/fonts.css" rel="stylesheet">
<link href="./css/magnific-popup.css" rel="stylesheet" />
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
#show_tooltip:hover .dropdown-menu {
	display: block;
}
.fontSize{
	font-size: 12px;
	color: #838383;
	font-weight : bold;
}
.icon-close:before{
	content:"";
}
.dropdown-menu {
	padding: 10px 0;
	margin: 10px 0 0;
	border: 1px solid #ccc;
	 border: 1px solid rgba(0, 0, 0, .15); 
	 border-radius: 4px; 
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
	box-shadow: 0 6px 12px rgba(0, 0, 0, .175);
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
							<li class=""><a href="#">home</a></li>
							<li class=""><a href="#">shop</a></li>
							<li class=""><a href="#">blog</a></li>
							<li class=""><a href="#">Changes</a></li>
							<li class=""><a href="#">contact</a></li>
							<li class=""><a href="#">Login</a></li>
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
										<ul class="dropdown-menu  pull-right" style="min-width:300px; box-shadow: 6px 6px 6px 6px rgba(0,0,0,0.2);">
											<li>	
												<div class="col-md-2">
													<a href="http://www.sainteclaire.es/carro/?remove_item=3788b64dde2e72ed4a6a5da0591ff11e&_n=4c29be2ee0"
														class="remove" title="Remove this item"><span
														class="icon-close" style="margin:0px;text-align: center"><span class="glyphicon glyphicon-remove"></span></span></a>
												</div>
												<div class="col-md-7">
													<a class="cart_list_product_title fontSize"
														href="http://www.sainteclaire.es/tienda/bebe/chaqueta-bebe-rosa/">(EspaÃ±ol)
														Chaqueta bebÃ© rosa</a>
													<div class="cart_list_product_price fontSize">
														<span class="amount">34,90Y</span> /<span class="amount">Cantidad:1</span>
													</div>
<!-- 													<div class="cart_list_product_quantity fontSize">Cantidad: -->
<!-- 														1</div> -->
												</div>
												<div class="col-md-3">
													<a class="cart_list_product_img"
														href="http://www.sainteclaire.es/tienda/bebe/chaqueta-bebe-rosa/"><img
														width="90" height="90"
														src="<%=basePath%>/images/bebe.jpg"
														class="attachment-shop_thumbnail wp-post-image"
														alt="chaqueta bebe rosa"></a>
												</div>
														<hr/>
														<div class="minicart_total_checkout">
															总金额：<span><span class="amount">34,90￥</span></span>
														</div>
														<a href="http://www.sainteclaire.es/realizar-pedido/"
															class="button secondary expand uppercase" style="text-align:center;">结算</a>
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
	<a href="#" class="back-to-top" style="display: none;"><i
		class="fa fa-angle-up"></i></a>
</body>
</html>