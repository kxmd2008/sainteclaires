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
<title>Flat Dream</title>
<link href="<%=basePath%>/css/bootstrap/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jquery.gritter.css">
<link rel="stylesheet" href="<%=basePath%>/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/nanoscroller.css">
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
							<!-- 							<li class="dropdown profile_menu"><a href="#" -->
							<!-- 								class="dropdown-toggle" data-toggle="dropdown"><span>Jane -->
							<!-- 										Smith</span> <b class="caret"></b></a> -->
							<!-- 								<ul class="dropdown-menu"> -->
							<!-- 									<li><a href="#">My Account</a></li> -->
							<!-- 									<li><a href="#">Profile</a></li> -->
							<!-- 									<li><a href="#">Messages</a></li> -->
							<!-- 									<li class="divider"></li> -->
							<!-- 									<li><a href="#">Sign Out</a></li> -->
							<!-- 								</ul> -->
							<!-- 							</li> -->
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
									<ul class="nav nav-list tree" style="display: none;">
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
						<div class="large-6 columns product-gallery">
							<div class="product-image images">
								<div class="iosSlider product-gallery-slider"
									style="position: relative; top: 0px; left: 0px; overflow: hidden; z-index: 0; -webkit-perspective: 1000px; -webkit-backface-visibility: hidden; min-height: 509px; width: 510px; height: auto;">
									<div class="slider gallery-popup"
										style="position: relative; cursor: -webkit-grab; -webkit-perspective: 0; -webkit-backface-visibility: hidden; left: 0px; width: 500px;">
										<div class="slide"
											style="-webkit-backface-visibility: hidden; overflow: hidden; position: absolute; left: 0px; width: 500px;">
											<span itemprop="image"><img
												src="./product/imgs/DSC6436-500x500.jpg" alt=""
												data-o_src="http://www.sainteclaire.es/wp-content/uploads/2014/07/chaqueta-bebe-rosa.jpg"
												data-o_title="" title=""></span> <a
												href="http://www.sainteclaire.es/wp-content/uploads/2014/07/chaqueta-bebe-rosa.jpg"
												title="zoom">
												<div class="zoom-button" data-tip="Zoom">
													<span class="glyphicon glyphicon-resize-full"></span>
												</div>
											</a>
										</div>
									</div>
<!-- 									<div class="scrollbarBlock1" -->
<!-- 										style="margin: 0px; overflow: hidden; display: block; position: absolute; left: 0px; width: 510px; top: 0px;"> -->
<!-- 										<div class="scrollbar1" -->
<!-- 											style="border-top-left-radius: 100px; border-top-right-radius: 100px; border-bottom-right-radius: 100px; border-bottom-left-radius: 100px; background-color: rgb(221, 221, 221); height: 3px; width: 510px; min-width: 3px; -webkit-perspective: 1000px; -webkit-backface-visibility: hidden; position: relative; opacity: 0.75; box-shadow: rgb(0, 0, 0) 0px 0px 0px; background-position: initial initial; background-repeat: initial initial;"></div> -->
<!-- 									</div> -->
<!-- 									<div class="scrollbarBlock1" -->
<!-- 										style="margin: 0px; overflow: hidden; display: block; position: absolute; left: 0px; width: 510px; top: 0px;"> -->
<!-- 										<div class="scrollbar1" -->
<!-- 											style="border-top-left-radius: 100px; border-top-right-radius: 100px; border-bottom-right-radius: 100px; border-bottom-left-radius: 100px; background-color: rgb(221, 221, 221); height: 3px; width: 510px; min-width: 3px; -webkit-perspective: 1000px; -webkit-backface-visibility: hidden; position: relative; opacity: 0.75; box-shadow: rgb(0, 0, 0) 0px 0px 0px; background-position: initial initial; background-repeat: initial initial;"></div> -->
<!-- 									</div> -->
								</div>
							</div>
						</div>
						<div class="product-info large-4 small-12 columns left">
							<h1 itemprop="name" class="entry-title">(Español) Chaqueta
								bebé rosa</h1>
							<div class="tx-div small"></div>
							<div itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
								<p itemprop="price" class="price large">
									<span class="amount">34,90€</span>
								</p>
								<meta itemprop="priceCurrency" content="EUR">
								<link itemprop="availability" href="http://schema.org/InStock">
							</div>
							<div class="variations variations_form cart custom">
								<h6>Size</h6>
								<div class="value pa_talla alt">
									<div class="select-wrapper">
										<select id="pa_talla" name="attribute_pa_talla">
											<option value="">Choose an option…</option>
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
										disabled="disabled">Add to cart</button>
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