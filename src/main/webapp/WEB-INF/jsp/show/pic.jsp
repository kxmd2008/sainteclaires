<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
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
<link rel="apple-touch-icon" href="img/apple_icons_57x57.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple_icons_72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple_icons_114x114.png">
<title>Oyster | Html Photo Template</title>
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
				<img src="img/logo_txt.png" alt=""  class="logo_def" style="width:150px;height:50px;">
				
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
                                        <div class="span12 module_cont module_blog module_none_padding module_blog_page">
                                            <div class="blog_post_page sp_post">
                                                <div class="pf_output_container">                                                	
                                                    <div class="slider-wrapper theme-default ">
                                                        <div class="nivoSlider">                                                
                                                            <img src="img/portfolio/1170_563/1.jpg" alt="" />
                                                           
                                                        </div>
                                                    </div>
                                                </div>                                                
                                                
                                            </div><!--.blog_post_page -->
                                            
                                            <div class="blog_post-footer sp-blog_post-footer ">
                                                <div class="blogpost_share">
                                                    <span>Share this:</span>
                                                    <a href="javascript:void(0)" class="share_facebook"><i class="stand_icon icon-facebook-square"></i></a>
                                                    <a href="javascript:void(0)" class="share_pinterest"><i class="stand_icon icon-pinterest"></i></a>                                                    <a href="javascript:void(0)" class="share_tweet"><i class="stand_icon icon-twitter"></i></a>                                                       
                                                    <a href="javascript:void(0)" class="share_gplus"><i class="icon-google-plus-square"></i></a>
                                                    <div class="clear"></div>
                                                </div>
                                                
                                                <div class="block_likes">
                                                    <div class="post-views"><i class="stand_icon icon-eye"></i> <span>5458</span></div>
                                                    <div class="gallery_likes gallery_likes_add ">
                                                        <i class="stand_icon icon-heart-o"></i>
                                                        <span>45</span>
                                                    </div>						
                                                </div>
                                                <div class="clear"></div>
                                            </div>                                     
                                        </div>
                                    </div>
                                  
                                    <hr class="single_hr">                            
                                
                                	<div class="row">
                                        <div class="span12">
                                            <div id="comments">
                                                <h4 class="headInModule postcomment">Comments: </h4>
                                                <ol class="commentlist">
                                                    <li class="comment odd alt thread-odd thread-alt depth-1">
                                                        <div class="stand_comment">
                                                            <div class="commentava wrapped_img">
                                                                <img alt="" src="img/avatar/3.jpg" class="avatar" height="96" width="96" />
                                                                <div class="img_inset"></div>
                                                            </div>
                                                            <div class="thiscommentbody">
                                                                <div class="comment_info">
                                                                    <h6 class="author_name">John Doe </h6>
                                                                    <h6 class="date">July 11, 2014</h6>
                                                                    <span class="comments"><a class="comment-reply-link" href="javascript:void(0)">Reply</a></span>
                                                                </div>
                                                                <p>Awesome!</p>
                                                            </div>
                                                            <div class="clear"></div>
                                                        </div>
                                                        <ul class="children">
                                                            <li class="comment byuser comment-author-gt3dev bypostauthor even depth-2">
                                                                <div class="stand_comment">
                                                                    <div class="commentava wrapped_img">
                                                                        <img alt="" src="img/avatar/2.jpg" class="avatar" height="96" width="96" />
                                                                        <div class="img_inset"></div>
                                                                    </div>
                                                                    <div class="thiscommentbody">
                                                                        <div class="comment_info">
                                                                            <h6 class="author_name">gt3dev </h6>
                                                                            <h6 class="date">July 11, 2014</h6>
                                                                             <span class="comments"><a class="comment-reply-link" href="javascript:void(0)">Reply</a></span>
                                                                        </div>
                                                                        <p>Thanks!</p>
                                                                    </div>
                                                                    <div class="clear"></div>
                                                                </div>
                                                            </li><!-- #comment-## -->
                                                        </ul><!-- .children -->
                                                    </li><!-- #comment-## -->
                                                    <li class="comment odd alt thread-even depth-1">
                                                        <div class="stand_comment">
                                                            <div class="commentava wrapped_img">
                                                                <img alt="" src="img/avatar/4.jpg" class="avatar" height="96" width="96" />
                                                                <div class="img_inset"></div>
                                                            </div>
                                                            <div class="thiscommentbody">
                                                                <div class="comment_info">
                                                                    <h6 class="author_name">Tom White </h6>
                                                                    <h6 class="date">July 11, 2014</h6>
                                                                     <span class="comments"><a class="comment-reply-link" href="javascript:void(0)">Reply</a></span>
                                                                </div>
                                                                <p>Amazing theme!</p>
                                                            </div>
                                                            <div class="clear"></div>
                                                        </div>
                                                    </li><!-- #comment-## -->  
                                                </ol>
                                                
                                                <hr class="comment_hr">                                                    
                                                
                                                <div id="respond" class="comment-respond">
                                                    <h3 id="reply-title" class="comment-reply-title">Leave a Comment!</h3>
                                                    <form action="javascript:void(0)" method="post" id="commentform" class="comment-form">
                                                        <p class="comment-notes">Your email address will not be published. Required fields are marked <span class="required">*</span></p>
                                                        <label class="label-name"></label><input type="text" placeholder="Name *" title="Name *" id="author" name="author" class="form_field">
                                                        <label class="label-email"></label><input type="text" placeholder="Email *" title="Email *" id="email" name="email" class="form_field">
                                                        <label class="label-message"></label><textarea name="comment" cols="45" rows="5" placeholder="Message..." id="comment-message" class="form_field"></textarea>
                                                        <p class="form-submit"><input name="submit" type="submit" id="submit" value="Post Comment" /></p>
                                                    </form>                 
                                                </div><!-- #respond -->
                                            </div>                                    
                                        </div>
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
        
    <footer>
        <div class="footer_wrapper container">
            <div class="copyright">Copyright &copy; 2014 Oyster HTML Template. All Rights Reserved.</div>
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
    <script>
		jQuery(document).ready(function(){
			"use strict";			
			jQuery('.commentlist').find('li').each(function(){
				if (jQuery(this).find('ul').size() > 0) {
					jQuery(this).addClass('has_ul');
				}
			});
			jQuery('.form-allowed-tags').width(jQuery('#commentform').width() - jQuery('.form-submit').width() - 13);
			
			jQuery('.pf_output_container').each(function(){
				if (jQuery(this).html() == '') {
					jQuery(this).parents('.blog_post_page').addClass('no_pf');
				} else {
					jQuery(this).parents('.blog_post_page').addClass('has_pf');
				}
			});			
						
		});
		jQuery(window).resize(function(){
			"use strict";
			jQuery('.form-allowed-tags').width(jQuery('#commentform').width() - jQuery('.form-submit').width() - 13);
		});
	</script>
</body>
</html>
