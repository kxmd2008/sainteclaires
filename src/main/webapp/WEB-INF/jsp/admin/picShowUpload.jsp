<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path; 
%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="head.jsp"></jsp:include>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/my.css">
<!-- blueimp Gallery styles -->
<!-- CSS to style the file input field as button and adjust the Bootstrap progress bars -->
<link rel="stylesheet" href="<%=basePath%>/upload/jquery.fileupload.css">
<link rel="stylesheet" href="<%=basePath%>/upload/jquery.fileupload-ui.css">
<!-- CSS adjustments for browsers with JavaScript disabled -->
<noscript><link rel="stylesheet" href="<%=basePath%>/upload/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="<%=basePath%>/upload/jquery.fileupload-ui-noscript.css"></noscript>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jcarousel.basic.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/jquery.nailthumb.1.0.min.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/bootstrap-multiselect.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/prettify.css">
<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #ccc;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold;
}
.wrapper {
    max-width: 620px;
    padding: 0 20px 40px 20px;
    margin: auto;
}
.bhoriz {
	width: 300px;
	height: 200px;
}
.circle {
    position: absolute;
/*     bottom: 0; */
	top:0;
	right:0px;
	margin-top:0px;
/*     left: 15px; */
}

.circle a {
    text-decoration: none;
    display: inline-block;
    
    font-size: 11px;
    line-height: 14px;
    min-width: 14px;
    
    background: #fff;
    color: #000;
    border-radius: 14px;
    padding: 3px;
    text-align: center;
    
    margin-right: 2px;
/*     border:1px solid #000; */
    
    opacity: .75;
}

.circle a:hover {
    background: #000;
    color: #fff;
    opacity: 1;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.75);
}
/* .btn-group button{ */
/*  	color: #fff; */
/*  	background: #556075; */
/*   	border-color: #357ebd; */
/* } */
</style>

<!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
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
<body class="" style="position: relative;"> 
  <!--<![endif]-->
<jsp:include page="main.jsp"></jsp:include>

<div class="content">

	<div class="header">
		<h1 class="page-title" id="product_title"><s:message code="pic.show.upload.title"/></h1>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="btn-toolbar">
				<button class="btn btn-primary" onclick="save();">
					<i class="icon-save"></i> <s:message code="pic.show.upload.save"/>
				</button>
				<div class="btn-group"></div>
			</div>
			<div class="well ">
				<form id="fileupload" action="<%=basePath%>/auth/upload" method="post" enctype="multipart/form-data">
				<input type="text" id="year" name="year" placeholder="<s:message code="pic.show.upload.year"/>" >
				<div class="span12" style="margin-left:0px;margin-bottom: 10px;">
					<select name="quarter" id="quarter" >
						<option value="1"><s:message code="admin.settings.quarter.spring"/></option>
						<option value="2"><s:message code="admin.settings.quarter.summer"/></option>
						<option value="3"><s:message code="admin.settings.quarter.autumn"/></option>
						<option value="4"><s:message code="admin.settings.quarter.winter"/></option>
					</select>
				</div>
				<div class="span12" style="margin-left:0px;margin-bottom: 10px;">
					 <select id="choose_category" name="example19" value="选择类别" title="<s:message code="product.item.select.category"/>" style="float:left;">
						 <c:forEach var="pcat" items="${parents}">
						 	<c:choose>
                            	<c:when test="${locale=='zh_CN' }"><option value="${pcat.id }">${pcat.name }</option></c:when>
                            	<c:otherwise><option value="${pcat.id }">${pcat.nameEn }</option></c:otherwise>
                            </c:choose>
                          </c:forEach>
                    </select>
                    <label id="categoryMsg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red"><s:message code="product.item.category.info"/></font></label>
                </div>
				        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
				        <input type="hidden" name="type" value="PIC_SHOW">
				        <div class="fileupload-buttonbar">
				            <div>
				                <!-- The fileinput-button span is used to style the file input field as button -->
				                <span class="btn btn-success fileinput-button">
				                    <i class="glyphicon glyphicon-plus"></i>
				                    <span><s:message code="pic.show.upload"/>...</span>
				                    <input type="file" name="files" multiple>
				                </span>
				            </div>
				        </div>
				        <!-- The table listing the files available for upload/download -->
				        <table role="presentation" class="table table-striped"><tbody class="files" id="files"></tbody></table>
					</form>
			</div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</div>
</div>
<div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
  <div class="modal-dialog" >
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only"></span></button>
        <h4 class="modal-title" id="myModalLabel"><s:message code="pic.show.upload.dialog"/></h4>
      </div>
      <div class="modal-body">
      	<h5><s:message code="pic.show.upload.succ"/></h5>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><s:message code="btn.ok"/></button>
      </div>
    </div>
  </div>
</div>
<!-- The template to display files available for upload -->
<script id="template-upload" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-upload fade">
        <td style="vertical-align: middle;">
            <span class="preview"></span>
        </td>
        <td style="vertical-align: middle;">
            <p class="name">{%=file.name%}</p>
            <strong class="error text-danger"></strong>
        </td>
        <td style="vertical-align: middle;">
            <p class="size">Processing...</p>
            <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress bar-success" style="width:0%;"></div></div>
        </td>
        <td style="vertical-align: middle;">
            {% if (!i && !o.options.autoUpload) { %}
                <button class="btn btn-primary start" disabled>
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Start</span>
                </button>
            {% } %}
            {% if (!i) { %}
                <button class="btn btn-warning cancel" onclick="cancel(this)">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<!-- The template to display files available for download -->
<script id="template-download" type="text/x-tmpl">
{% for (var i=0, file; file=o.files[i]; i++) { %}
    <tr class="template-download fade">
        <td>
            <span class="preview">
                {% if (file.thumbnailUrl) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                {% } %}
            </span>
        </td>
        <td>
            <p class="name">
                {% if (file.url) { %}
                    <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                {% } else { %}
                    <span>{%=file.name%}</span>
                {% } %}
            </p>
            {% if (file.error) { %}
                <div><span class="label label-danger">Error</span> {%=file.error%}</div>
            {% } %}
        </td>
        <td>
            <span class="size">{%=o.formatFileSize(file.size)%}</span>
        </td>
        <td>
            {% if (file.deleteUrl) { %}
                <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" data-url="{%=file.deleteUrl%}"{% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Delete</span>
                </button>
                <input type="checkbox" name="delete" value="1" class="toggle">
            {% } else { %}
                <button class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancel</span>
                </button>
            {% } %}
        </td>
    </tr>
{% } %}
</script>
<script type="text/javascript">
function deletePic(){
	var picNum = $(".jcarousel-pagination .active").html();
	var pics = $(".jcarousel ul li");
	var i = eval(picNum + "-" + 1);
	var alt;
	var value="";
	$(pics).each(function(index){
		if(index == i){
			alt = $(pics[index]).children("img").attr("alt");
			$(pics[i]).remove();
			var hiddenPics = $("#picStr").val();
			var hiddenPic = hiddenPics.split(",");
			$(hiddenPic).each(function(i){
				if(hiddenPic[i] != alt){
					value = value+ hiddenPic[i]+",";
				}
			});
			value = value.substring(0,value.length-1);
			$("#picStr").val(value);
		}
	});
	$(".jcarousel-pagination a").last().remove();
	$(".jcarousel-control-prev").addClass("inactive");
	$(".jcarousel-control-next").removeClass("inactive");
	$("#jcarousel_ul").css("left","0px");
	var child = $(".jcarousel ul").children();
	if(child.length != 0){
		$(".jcarousel-pagination a").first().addClass("active");
	}
	if(child.length == 0){
		$(".wrapper").css("display","none");
	}
}
</script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.jcarousel.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jcarousel.basic.js"></script>
<script type="text/javascript" src="<%=basePath%>/js/jquery.nailthumb.1.0.min.js"></script>
<!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
<script src="<%=basePath%>/upload/vendor/jquery.ui.widget.js"></script>
<!-- The Templates plugin is included to render the upload/download listings -->
<script src="<%=basePath%>/upload/tmpl.min.js"></script>
<!-- The Load Image plugin is included for the preview images and image resizing functionality -->
<script src="<%=basePath%>/upload/load-image.min.js"></script>
<!-- The Canvas to Blob plugin is included for image resizing functionality -->
<script src="<%=basePath%>/upload/canvas-to-blob.min.js"></script>
<!-- Bootstrap JS is not required, but included for the responsive demo navigation -->
<script src="<%=basePath%>/common/bootstrap.min_v2.js"></script>
<!-- blueimp Gallery script -->
<script src="<%=basePath%>/upload/jquery.blueimp-gallery.min.js"></script>
<!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
<script src="<%=basePath%>/upload/jquery.iframe-transport.js"></script>
<!-- The basic File Upload plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload.js"></script>
<!-- The File Upload processing plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-process.js"></script>
<!-- The File Upload image preview & resize plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-image.js"></script>
<!-- The File Upload audio preview plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-audio.js"></script>
<!-- The File Upload video preview plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-video.js"></script>
<!-- The File Upload validation plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-validate.js"></script>
<!-- The File Upload user interface plugin -->
<script src="<%=basePath%>/upload/jquery.fileupload-ui.js"></script>
<script src="<%=basePath%>/js/bootstrap-multiselect.js"></script>
<script src="<%=basePath%>/js/prettify.js"></script>
<!-- The main application script -->
<script src="<%=basePath%>/upload/main.js"></script>
<script src="<%=basePath%>/js/admin/picShow.js"></script>
  </body>
</html>

