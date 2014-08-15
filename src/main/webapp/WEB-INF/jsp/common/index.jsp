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
<meta charset="utf-8">
<title>Sainte Claire</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/theme.css">
<link rel="stylesheet"  href="<%=basePath%>/css/font-awesome/css/font-awesome.css">
<!-- Custom favicon-->
<link rel="shortcut icon" href="<%=basePath%>/themes/imgs/favicon.png" />
<!-- Retina/iOS favicon -->
<link rel="apple-touch-icon-precomposed"
	href="<%=basePath%>/themes/imgs/apple-touch-icon-precomposed.png" />

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<!--[if lt IE 7 ]> <body class="ie ie6"> <![endif]-->
<!--[if IE 7 ]> <body class="ie ie7 "> <![endif]-->
<!--[if IE 8 ]> <body class="ie ie8 "> <![endif]-->
<!--[if IE 9 ]> <body class="ie ie9 "> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<body class="">
	<!--<![endif]-->
	<div id="wrapper">
		<div id="top-bar">
			<div class="row">
				<!-- 分享 -->
				<div id="sociable"
					style="position: absolute; top: 10px; left: 50px; z-index: 99999; opacity: 0.9">
					<a href="http://www.facebook.com/mi.sainteclaire" target="_blank">
						<img
						src="http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/fb.png"
						width="25" height="25"
						onMouseOver="javascript:this.src='http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/fb_2.png'"
						onMouseOut="javascript:this.src='http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/fb.png'">
					</a> <a href="http://twitter.com/miSainteClaire" target="_blank"> <img
						src="http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/tw.png"
						width="25" height="25"
						onMouseOver="javascript:this.src='http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/tw_2.png'"
						onMouseOut="javascript:this.src='http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/tw.png'">
					</a> <a href="http://www.pinterest.com/sainteclaireblg" target="_blank">
						<img
						src="http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/pt.png"
						width="25" height="25"
						onMouseOver="javascript:this.src='http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/pt_2.png'"
						onMouseOut="javascript:this.src='http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/pt.png'">
					</a> <a href="http://instagram.com/sainteclaire" target="_blank"> <img
						src="http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/ig.png"
						width="25" height="25"
						onMouseOver="javascript:this.src='http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/ig_2.png'"
						onMouseOut="javascript:this.src='http://www.sainteclaire.es/wp-content/themes/dattic-sainteclairev3/social/ig.png'">
					</a>
				</div>
				<div class="large-12 columns">
					<!-- left text -->
					<div class="left-text left">
						<div class="html"></div>
						<!-- .html -->
					</div>
					<!-- right text -->
					<div class="right-text right hide-for-small">
						<ul class="qtrans_language_chooser" id="qtranslate-2-chooser">
							<li class="lang-en active"><a
								href="http://www.sainteclaire.es/en/juguetes/" hreflang="en"
								title="English"><span>English</span></a></li>
							<li class="lang-es"><a
								href="http://www.sainteclaire.es/juguetes/" hreflang="es"
								title="Español"><span>Español</span></a></li>
						</ul>
						<div class="qtrans_widget_end"></div>
						<script type="text/javascript">
							// <![CDATA[
							var lc = document
									.getElementById('qtranslate-2-chooser');
							var s = document.createElement('select');
							s.id = 'qtrans_select_qtranslate-2-chooser';
							lc.parentNode.insertBefore(s, lc);
							var sb = document
									.getElementById('qtrans_select_qtranslate-2-chooser');
							var o = document.createElement('option');
							var l = document.createTextNode('English');
							o.selected = 'selected';
							o.value = 'http://www.sainteclaire.es/en/juguetes/';
							o.appendChild(l);
							sb.appendChild(o);

							var sb = document
									.getElementById('qtrans_select_qtranslate-2-chooser');
							var o = document.createElement('option');
							var l = document.createTextNode('Español');

							o.value = 'http://www.sainteclaire.es/juguetes/';
							o.appendChild(l);
							sb.appendChild(o);
							s.onchange = function() {
								document.location.href = this.value;
							}
							lc.style.display = 'none';
							// ]]>
						</script>
						<div class="menu-navigation-container">
							<ul id="menu-navigation" class="top-bar-nav">
								<li id="menu-item-1153"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1153"><a
									href="http://www.sainteclaire.es/en/" class="nav-top-link">home</a></li>
								<li id="menu-item-1154"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1154"><a
									href="http://www.sainteclaire.es/en/tienda/"
									class="nav-top-link">shop</a></li>
								<li id="menu-item-9442"
									class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9442"><a
									href="http://www.sainteclaire.es/blog" class="nav-top-link">blog</a></li>
								<li id="menu-item-11903"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-11903"><a
									href="http://www.sainteclaire.es/en/cambios/"
									class="nav-top-link">Changes</a></li>
								<li id="menu-item-1156"
									class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1156"><a
									href="http://www.sainteclaire.es/en/contacto/"
									class="nav-top-link">contact</a></li>
							</ul>
						</div>
					</div>
					<!-- .pos-text -->

				</div>
				<!-- .large-12 columns -->
			</div>
			<!-- .row -->
		</div>
		<!-- .#top-bar -->

		<header id="masthead" class="site-header" role="banner">
			<!--<div class="row"> -->
			<div class="large-12 columns header-container">
				<div class="mobile-menu show-for-small">
					<a href="#open-menu"><span class="icon-menu"></span></a>
				</div>
				<!-- end mobile menu -->
				<div id="logo" class="logo-left">
					<h1>
						<a href="http://www.sainteclaire.es/" title="Sainte Claire - "
							rel="home"> <img src="<%=basePath%>/themes/imgs/logo_txt.png"
							class="header_logo" alt="Sainte Claire" />
						</a>
					</h1>
				</div>
				<!-- .logo -->
				<div class="left-links">
					<ul id="site-navigation" class="header-nav">
					</ul>
				</div>
				<!-- .left-links -->
				<div class="right-links" style="display: none">
					<ul class="header-nav">
						<li class="account-dropdown hide-for-small"><a
							href="http://www.sainteclaire.es/en/mi-cuenta/"
							class="nav-top-link">Login</a></li>
						<!-- Show mini cart if Woocommerce is activated -->
						<li class="mini-cart" style="display: none">
							<div class="cart-inner" style="display: none">
								<a style="display: none"
									href="http://www.sainteclaire.es/en/carro/" class="cart-link">
									<strong class="cart-name hide-for-small" style="display: none">Cart</strong>
									<span class="cart-price hide-for-small" style="display: none">/
										<span class="amount">0,00&euro;</span>
								</span> <!-- cart icon -->
									<div class="cart-icon" style="display: none">

										<div class="custom-cart-inner" style="display: none">
											<div class="custom-cart-count" style="display: none">0</div>
											<img class="custom-cart-icon" src="" />
										</div>
										<!-- .custom-cart-inner -->
									</div> <!-- end cart icon -->
								</a>
								<div class="nav-dropdown" style="display: none">
									<div class="nav-dropdown-inner">
										<!-- Add a spinner before cart ajax content is loaded -->
										<p class="empty">No hay productos en la cesta.</p>
									</div>
									<!-- nav-dropdown-innner -->
								</div>
								<!-- .nav-dropdown -->
							</div> <!-- .cart-inner -->
						</li>
						<!-- .mini-cart -->
					</ul>
					<!-- .header-nav -->
				</div>
				<!-- .right-links -->
			</div>
			<!-- .large-12 -->
			<!--</div> .row -->
		</header>
		<!-- .header -->

		<div id="nav-tienda">
			<ul id="menu-bebe-3" class="menu">
				<li id="menu-item-1214"
					class="menu-item menu-item-type-post_type menu-item-object-page"><a
					href="http://www.sainteclaire.es/en/juguetes/">Toys</a>
					<ul class="wooc_sclist">
						<li><a
							href="http://www.sainteclaire.es/en/categoria-producto/juguetes/peluches/">Peluches</a></li>
					</ul>
				</li>
			</ul>
			<li class="search-dropdown"><a href="#"
				class="nav-top-link icon-search"></a>
				<div class="nav-dropdown">
					<div class="row collapse yith-ajaxsearchform-container">
						<form role="search" method="get" id="yith-ajaxsearchform"
							action="http://www.sainteclaire.es/en/">
							<div class="large-10 small-10 columns">
								<input type="search" value="" name="s" id="yith-s"
									placeholder="Buscar" />
							</div>
							<!-- input -->
							<div class="large-2 small-2 columns">
								<button type="submit" id="yith-searchsubmit"
									class="button secondary postfix">
									<i class="icon-search"></i>
								</button>
								<input type="hidden" name="post_type" value="product" />
							</div>
							<!-- button -->
						</form>
					</div>
					<!-- row -->
</body>
</html>