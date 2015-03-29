<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
// 	String basePath = request.getScheme() + "://"
// 			+ request.getServerName() + ":" + request.getServerPort()
// 			+ path;
	String basePath = request.getRequestURL().toString();
%>
<!DOCTYPE html>
<html class="fullscreen_page sticky_menu">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="shortcut icon" href="/common/image/favicon.png" type="image/x-icon">
<link rel="apple-touch-icon" href="shows/apple_icons_57x57.png">
<link rel="apple-touch-icon" sizes="72x72" href="shows/apple_icons_72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="shows/apple_icons_114x114.png">
<title>Sainte Claire</title>
<link href="http://fonts.useso.com/css?family=PT+Sans" rel="stylesheet" type="text/css">
<link href="http://fonts.useso.com/css?family=Roboto:400,300,500,900" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/theme/show/css/theme.css" type="text/css" media="all" />
<link rel="stylesheet" href="/theme/show/css/responsive.css" type="text/css" media="all" />
<link rel="stylesheet" href="/theme/show/css/custom.css" type="text/css" media="all" />
<script type="text/javascript" src="/theme/show/js/jquery.min.js"></script>
</head>
<body>
<!-- 	<header class="main_header"> -->
<!--         <div class="header_wrapper"> -->
<!--         	<div class="logo_sect" style="padding-top:18px;padding-bottom:18px;"> -->
<!--                 <a href="#" class="logo"> -->
<!-- 				<img src="/common/image/logo_txt.png" alt=""  class="logo_def" style="width:150px;height:50px;"> -->
<!--             </div> -->
<!--             <div class="header_rp" > -->
<!--              	 <nav> -->
<!--                     <div class="menu-main-menu-container"> -->
<!--                     	<ul id="menu-main-menu" class="menu"> -->
<!--                         	<li class="menu-item-has-children"> -->
<!--                         		<select onchange="changeLocale();" id="localeSel" style="margin-top:22px;margin-bottom:22px;">	 -->
<%-- 									<option value="zh_CN" <c:if test="${locale == 'zh_CN' }">selected="selected"</c:if> >中文 --%>
<%-- 									<option value="en_US" <c:if test="${locale == 'en_US' }">selected="selected"</c:if> >English --%>
<!-- 								</select> -->
								
<!--                         	</li> -->
<!--                         	<li class="menu-item-has-children" style="margin-top:10px;margin-bottom:22px;"> -->
<!--                             	<a href="#"><span>公司简介</span></a> -->
<!--                             </li> -->
<!--                         </ul> -->
<!--                     </div> -->
                   
<!--                 </nav> -->
<!--             </div> -->
<!--             <div class="clear"></div> -->
<!--         </div> -->
<!--     </header> -->
	<header class="main_header">
        <div class="header_wrapper">
        	<div class="logo_sect">
                <a href="#" class="logo">
                	<img src="/common/image/logo_txt.png" alt="" class="logo_def" style="width:150px;height:50px;">
                </a>
            </div>                       
            <div class="header_rp">
                <nav>
                    <div class="menu-main-menu-container">
                    	<ul id="menu-main-menu" class="menu">
                        	<li class="menu-item-has-children">
                            	<select onchange="changeLocale();" id="localeSel" style="margin-top:22px;margin-bottom:22px;">	
									<option value="zh_CN" <c:if test="${locale == 'zh_CN' }">selected="selected"</c:if> >中文
									<option value="en_US" <c:if test="${locale == 'en_US' }">selected="selected"</c:if> >English
								</select>                           
                            </li>
                            <li class="menu-item-has-children" style="margin-top:10px;margin-bottom:22px;">
                            	<a href="introduction"><span>公司简介</span></a>                            
                            </li>
                    </div>
                </nav>            
			</div>
            <div class="clear"></div>
        </div>
    </header>
    <div class="fullscreen_block hided">
		<ul class="optionset" data-option-key="filter">
            <c:choose>
            	<c:when test="${locale == 'en_US' }">
            		<li class="selected"><a href="show" data-option-value="*">All</a></li>
            		<c:forEach items="${parents }" var="cate">
            		<li><a data-option-value=".cate${cate.id }" href="#filter" >${cate.nameEn }</a></li>
            		</c:forEach>
            	</c:when>
            	<c:otherwise>
            		<li class="selected"><a href="show" data-option-value="*">全部</a></li>
            		<c:forEach items="${parents }" var="cate">
            		<li><a data-option-value=".cate${cate.id }" href="#filter" >${cate.name }</a></li>
            		</c:forEach>
            	</c:otherwise>
            </c:choose>
        </ul>
        <div class="fs_blog_module image-grid">
        	<c:forEach items="${showpics}" var="pic">
        	<div class="blogpost_preview_fw element cate${pic.cateId }">
            	<div class="fw_preview_wrapper">
                    <div class="gallery_item_wrapper">
                        <a href="show/pic/${pic.id}" >
                            <img src="/${pic.path}" alt="" class="fw_featured_image" width="540">
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
	<script type="text/javascript" src="/theme/show/js/jquery-ui.min.js"></script>    
    <script type="text/javascript" src="/theme/show/js/modules.js"></script>
	<script type="text/javascript" src="/theme/show/js/theme.js"></script>
    <script type="text/javascript" src="/theme/show/js/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="/theme/show/js/sorting.js"></script>  
    <script type="text/javascript" src="/js/shows/picShow.js"></script>  
    <script type="text/javascript">
        jQuery(document).ready(function($){
			"use strict";
			setTimeout(function(){
                jQuery('.fullscreen_block').removeClass('hided');
			},2300);
			setTimeout("jQuery('.preloader').remove()", 2600);			
		});	
        function changeLocale(){
    		var locale = $("#localeSel").val();
    		var d = {"localeStr" : locale};
    		$.post("changeLocale", d, function(data){
    			if(data.head.resp_code = '200'){
    				location.reload();
    			}
    		});
    	}
    </script>     
</body>
</html>
