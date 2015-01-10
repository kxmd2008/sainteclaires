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
<html class="fullscreen_page sticky_menu">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="<%=basePath%>/common/image/favicon.png" type="image/x-icon">
<link rel="apple-touch-icon" href="shows/apple_icons_57x57.png">
<link rel="apple-touch-icon" sizes="72x72" href="shows/apple_icons_72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="shows/apple_icons_114x114.png">
<title>Sainte Claire</title>
<link href="http://fonts.useso.com/css?family=PT+Sans" rel="stylesheet" type="text/css">
<link href="http://fonts.useso.com/css?family=Roboto:400,300,500,900" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="<%=basePath%>/theme/show/css/theme.css" type="text/css" media="all" />
<link rel="stylesheet" href="<%=basePath%>/theme/show/css/responsive.css" type="text/css" media="all" />
<link rel="stylesheet" href="<%=basePath%>/theme/show/css/custom.css" type="text/css" media="all" />
<script type="text/javascript" src="<%=basePath%>/theme/show/js/jquery.min.js"></script>
</head>
<body>
	<header class="main_header">
        <div class="header_wrapper">
        	<div class="logo_sect" style="padding-top:18px;padding-bottom:18px;">
                <a href="#" class="logo">
				<img src="<%=basePath%>/common/image/logo_txt.png" alt=""  class="logo_def" style="width:150px;height:50px;">
            </div>
            <div class="clear"></div>
        </div>
    </header>
    <div class="fullscreen_block hided">
		<ul class="optionset" data-option-key="filter">
        	<li class="selected"><a href="show" data-option-value="*">All Works</a></li>
            <li><a data-option-value=".advertisement" href="#filter" title="View all post filed under advertisement">Advertisement</a></li>
            <li><a data-option-value=".cities" href="#filter" title="View all post filed under cities">Cities</a></li>
            <li><a data-option-value=".fashion" href="#filter" title="View all post filed under fashion">Fashion</a></li>
            <li><a data-option-value=".nature" href="#filter" title="View all post filed under nature">Nature</a></li>
            <li><a data-option-value=".portrait" href="#filter" title="View all post filed under portrait">Portrait</a></li>
            <li><a data-option-value=".ttttt" href="#filter" title="View all post filed under stuff">Stuff</a></li>
        </ul>
        <div class="fs_blog_module image-grid">
        	<c:forEach items="${showpics}" var="pic">
        	<div class="blogpost_preview_fw element ttttt">
            	<div class="fw_preview_wrapper">
                    <div class="gallery_item_wrapper">
                        <a href="<%=basePath%>/show/pic/${pic.id}" >
                            <img src="<%=basePath%>/${pic.path}" alt="" class="fw_featured_image" width="540">
                            <div class="gallery_fadder"></div>
                            <span class="gallery_ico"><i class="stand_icon icon-eye"></i></span>
                        </a>
                    </div>
                    <div class="grid-port-cont">
                        <div class="block_likes">
                            <div class="post-views"><i class="stand_icon icon-eye"></i> <span>${pic.views}</span></div>                            
                            <div class="gallery_likes gallery_likes_add already_liked" onclick="detailtilovepic(${pic.id})">
                                <i class="stand_icon icon-heart"></i>
                                <span id="love${pic.id}">${pic.loves}</span>
                            </div>											
                        </div>                            
                    </div>                                            
                </div>
            </div>
            </c:forEach>
    	</div>                       
	</div>
   	<div class="preloader"></div>     
    <footer class="fullwidth">
        <div class="footer_wrapper">
            <div class="copyright">Copyright &copy; 2014-2015 Sainte Claire.</div>
            <div class="socials_wrapper">
                <ul class="socials_list">
                	<li><a class="ico_social_dribbble" target="_blank" href="http://dribbble.com/" title="Dribbble"></a></li>
                    <li><a class="ico_social_gplus" target="_blank" href="https://plus.google.com/" title="Google+"></a></li>
                    <li><a class="ico_social_vimeo" target="_blank" href="https://vimeo.com/" title="Vimeo"></a></li>
                    <li><a class="ico_social_pinterest" target="_blank" href="http://pinterest.com/" title="Pinterest"></a></li>
                    <li><a class="ico_social_facebook" target="_blank" href="http://facebook.com/" title="Facebook"></a></li>
                    <li><a class="ico_social_twitter" target="_blank" href="http://twitter.com/" title="Twitter"></a></li>
                    <li><a class="ico_social_instagram" target="_blank" href="http://instagram.com/" title="Instagram"></a></li>
            	</ul>
            </div>
            <div class="clear"></div>
        </div>
    </footer>
	<div class="content_bg"></div>
	<script type="text/javascript" src="<%=basePath%>/theme/show/js/jquery-ui.min.js"></script>    
    <script type="text/javascript" src="<%=basePath%>/theme/show/js/modules.js"></script>
	<script type="text/javascript" src="<%=basePath%>/theme/show/js/theme.js"></script>
    <script type="text/javascript" src="<%=basePath%>/theme/show/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="<%=basePath%>/theme/show/js/sorting.js"></script>  
    <script type="text/javascript" src="<%=basePath%>/js/shows/picShow.js"></script>  
    <script type="text/javascript">
        jQuery(document).ready(function($){
			"use strict";
			setTimeout(function(){
                jQuery('.fullscreen_block').removeClass('hided');
			},2300);
			setTimeout("jQuery('.preloader').remove()", 2600);			
		});	
    </script>     
</body>
</html>
