<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<link rel="apple-touch-icon" href="img/apple_icons_57x57.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple_icons_72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple_icons_114x114.png">
<title>Sainte Claire</title>
<link href="http://fonts.useso.com/css?family=PT+Sans" rel="stylesheet" type="text/css">
<link href="http://fonts.useso.com/css?family=Roboto:400,300,500,900" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/theme/show/css/theme.css" type="text/css" media="all" />
<link rel="stylesheet" href="/theme/show/css/responsive.css" type="text/css" media="all" />
<link rel="stylesheet" href="/theme/show/css/custom.css" type="text/css" media="all" />
<script type="text/javascript" src="/theme/show/js/jquery.min.js"></script>
<style type="text/css">
.sss{
	display: none;
}
</style>
</head>
<body>

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
                    		<li class="menu-item-has-children" style="margin-top:10px;margin-bottom:22px;">
                            	<a href="http://www.sainteclaire.com.cn/"><span><s:message code="header.home"/></span></a>                            
                            </li>
                        	<li class="menu-item-has-children">
                            	<select onchange="changeLocale();" id="localeSel" style="margin-top:22px;margin-bottom:22px;">	
									<option value="zh_CN" <c:if test="${locale == 'zh_CN' }">selected="selected"</c:if> >中文
									<option value="en_US" <c:if test="${locale == 'en_US' }">selected="selected"</c:if> >English
								</select>                           
                            </li>
                            
                            <li class="menu-item-has-children" style="margin-top:10px;margin-bottom:22px;">
                            	<a href="#"><span><s:message code="common.profile"/></span></a>                            
                            </li>
                    </div>
                </nav>            
			</div>
            <div class="clear"></div>
        </div>
    </header>
    
    <div class="main_wrapper">
    	<div class="content_wrapper">
            <div class="container simple-post-container">
                <div class="content_block no-sidebar row">
                    <div class="fl-container ">
                        <div class="row">						
                            <div class="posts-block simple-post">
                                <div class="contentarea">
                                    <div class="row">
<div class="main_wrapper">
<!--     	<div class="bg_sidebar is_right-sidebar"></div> -->
        <div class="content_wrapper">
            <div class="container">
                <div class="content_block right-sidebar row">
                    <div class="fl-container hasRS">
                    	<div class="row">	                                        					
                            <div class="posts-block">
                                <div class="page_title_block">
                                    <h1 class="title"><s:message code="introduction.title"/></h1>
                                </div>
                                <div class="contentarea">                              
                                    
                                    <div class="row">
                                    	<div class="first-module module_number_1 module_cont pb30 module_text_area">
                                        	<div class="module_content">
                                                <p>
                                                <s:message code="introduction.p.1"/>
												</p><br/>
												<p>
												<s:message code="introduction.p.2"/>
												</p><br/>
												<p>
												<s:message code="introduction.p.3"/>
												</p><br/>
												<p>
												<s:message code="introduction.p.4"/>
												</p><br/>
												<p>
												<s:message code="introduction.p.5"/>
												</p><br/>
												<p>
												<s:message code="introduction.p.6"/>
												</p><br/>
												<p>
												<s:message code="introduction.p.7"/><a href="http://www.sainteclaire.es" target="_blank">www.sainteclaire.es</a>
												</p>
												
                                            </div>
                                        </div><!-- .module_cont -->                                    
                                    </div>
                                    
                                    <div class="row">                                    
                                    	<div class="span4 module_number_3 module_cont no_bg pb30 module_contact_info">
                                        	<div class="bg_title"><h4 class="headInModule"><s:message code="introduction.contact"/></h4></div>
                                            <ul class="contact_info_list contact_icons">
                                                <li class="contact_info_item">
                                                    <div class="contact_info_wrapper">
                                                        <span class="contact_info_icon"><i class="icon-home"></i></span>
                                                        <div class="contact_info_text"><a href="http://www.sainteclaire.es">Web</a></div>
                                                    </div>
                                                </li>
                                                <li class="contact_info_item">
                                                    <div class="contact_info_wrapper">
                                                        <span class="contact_info_icon"><i class="icon-phone"></i></span>
                                                        <div class="contact_info_text">+34 608449321</div>
                                                    </div>
                                                </li>
                                                <li class="contact_info_item">
                                                    <div class="contact_info_wrapper">
                                                        <span class="contact_info_icon"><i class="icon-envelope"></i></span>
                                                        <div class="contact_info_text"><a href="#">correo@sainteclaire.es</a></div>
                                                    </div>
                                                </li>
                                                <li class="contact_info_item">
                                                    <div class="contact_info_wrapper">
                                                        <span class="contact_info_icon"><i class="icon-skype"></i></span>
                                                        <div class="contact_info_text"><a href="http:/www.sainteclaire.es/category/blog/">Blog</a></div>
                                                    </div>
                                                </li>
                                                <li class="contact_info_item">
                                                    <div class="contact_info_wrapper">
                                                        <span class="contact_info_icon"><i class="icon-twitter"></i></span>
                                                        <div class="contact_info_text"><a href="http://@miSainteClaire">Twitter</a></div>
                                                    </div>
                                                </li>
                                                <li class="contact_info_item">
                                                    <div class="contact_info_wrapper">
                                                        <span class="contact_info_icon"><i class="icon-facebook-square"></i></span>
                                                        <div class="contact_info_text"><a href="http://www.facebook.com/mi.sainteclaire">Facebook</a></div>
                                                    </div>
                                                </li>
                                                <li class="contact_info_item">
                                                    <div class="contact_info_wrapper">
                                                        <span class="contact_info_icon"><i class="icon-dribbble"></i></span>
                                                        <div class="contact_info_text"><a href="http://www.pinterest.com/sainteclaireblg">Pinterest</a></div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div><!-- .module_cont -->                                        
                                    </div>
                                                                        
                                </div><!-- .contentarea -->
                            </div>                                           
                        </div>                   
                    	<div class="clear"></div> 
                    </div><!-- .fl-container -->
                	<div class="clear"></div>
                </div>
            </div><!-- .container -->
    	</div><!-- .content_wrapper -->    
    </div><!-- .main_wrapper -->
    
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
    <script type="text/javascript">
        function initialize() {
			"use strict";
            // Create an array of styles.
            var styles = [
			  {
				"stylers": [
				  { "saturation": -81 },
				  { "hue": "#00e5ff" }
				]
			  },{
				"elementType": "labels.text.stroke",
				"stylers": [
				  { "visibility": "off" }
				]
			  }
			];
        }
        function changeLocale(){
    		var locale = $("#localeSel").val();
    		var d = {"localeStr" : locale};
    		$.post("../../changeLocale", d, function(data){
    			if(data.head.resp_code = '200'){
    				location.reload();
    			}
    		});
    	}
    </script>
</body>
</html>
