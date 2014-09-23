<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
#product_add .error{
	color:red
}
.btn-group{
	float:left;
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
		<c:choose>
			<c:when test="${empty vo }">
				<h1 class="page-title" id="product_title">新增产品</h1>
			</c:when>
			<c:otherwise>
					<h1 class="page-title" id="product_title">修改产品</h1>
			</c:otherwise>
		</c:choose>
	</div>

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="btn-toolbar">
				<button class="btn btn-primary"  class="button" onclick="saveProduct();">
					<i class="icon-save"></i> 保存
				</button>
				<div class="btn-group"></div>
			</div>
			<div class="well " >
<!-- 				<form id="product_add"> -->
					<div class="span12" style="margin-left:0px;">
					 <select id="choose_category" multiple="multiple" name="example19" value="选择类别" title="选择类别" style="float:left;">
						 <c:forEach var="pcat" items="${parents}">
                            <optgroup label="${pcat.name }">
                            	<c:forEach var="subcat" items="${subcatMap[pcat.id]}">
                                	<option value="${subcat.id}" 
                                		<c:if test="${subcat.selected}">selected="selected"</c:if>
                                	>${subcat.name }</option>
                                </c:forEach>
                            </optgroup>
                          </c:forEach>
                    </select>
                    <label id="categoryMsg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">必须选择一项类别！</font></label>
                    </div>
                    <div class="span12" style="margin-left:0px;">
					<label>产品名称</label> 
					<input type="text" id="name" name="name" value="${vo.name }" placeholder="产品名称" style="float:left;">
					<label id="nameMsg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品名称不能为空！</font></label>
					</div> 
					<div class="span12" style="margin-left:0px;">
					<label>产品价格</label> 
					<input type="text" step="0.1" min="1" value="${vo.price }" id="price" name="price" placeholder="产品价格" style="float:left;">
					<label id="priceMsg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品价格不能为空！</font></label>
					</div>  
					<div class="span12" style="margin-left:0px;">
					<label>产品库存</label> 
					<input type="text" min="1" id="num" name="num" value="${vo.num }" placeholder="产品库存" style="float:left;">
					<label id="numMsg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品库存不能为空！</font></label>
					</div>
					<div class="span12" style="margin-left:0px;">   
					<label>产品尺码</label> 
					<input value="${vo.meses06 }" type="text" min="0" id="meses06" name="meses06" placeholder="06尺码库存" style="float:left;">
					<label id="meses06Msg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品尺码06不能为空！</font></label>
					</div>
					<div class="span12" style="margin-left:0px;">  
					<input value="${vo.meses09 }" type="text" min="0" id="meses09" name="meses09" placeholder="09尺码库存" style="float:left;">
					<label id="meses09Msg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品尺码09不能为空！</font></label>
					</div>
					<div class="span12" style="margin-left:0px;">  
					<input value="${vo.meses12 }" type="text" min="0" id="meses12" name="meses12" placeholder="12尺码库存" style="float:left;">
					<label id="meses12Msg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品尺码12不能为空！</font></label>
					</div>
					<div class="span12" style="margin-left:0px;">  
					<input value="${vo.meses18 }" type="text" min="0" id="meses18" name="meses18" placeholder="18尺码库存" style="float:left;">
					<label id="meses18Msg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品尺码18不能为空！</font></label>
					</div>
					<div class="span12" style="margin-left:0px;">  
					<input value="${vo.meses24 }" type="text" min="0" id="meses24" name="meses24" placeholder="24尺码库存" style="float:left;">
					<label id="meses24Msg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品尺码24不能为空！</font></label>
					</div> 
					<label></label>
					<div class="span12" style="margin-left:0px;">   
						<textarea rows="3" cols="4" placeholder="产品描述" id="desc" name="desc" style="width:240px;float:left;" >${vo.description }</textarea>
						<label id="descMsg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">产品描述不能为空！</font></label>
					</div>
					<!--产品图片展示 -->
					<div class="wrapper" 
						<c:if test="${vo.id == null }">
							style="display: none"
						</c:if>
					>
			            <div class="jcarousel-wrapper">
			                <div class="jcarousel" >
			                    <ul>
			                    	<c:forEach var="pic" items="${vo.picList }">
<%-- 			                    	<li class="thumbwrapper bhoriz"> <a href="#"><img src="<%=basePath%>/${pic}"  /></a></li> --%>
			                        <li class="bhoriz"><img src="<%=basePath%>/${pic}" alt="${pic}" title="${pic}"></li>
			                    	</c:forEach>
			                    </ul>
			                </div>
			                <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
			                <a href="#" class="jcarousel-control-next">&rsaquo;</a>
			                <p class="jcarousel-pagination">
			                </p>
			            </div>
			        </div>
<!-- 			        </form> -->
					<form id="fileupload" action="<%=basePath%>/auth/upload" method="post" enctype="multipart/form-data">
<!-- 						<noscript><input type="hidden" name="redirect" value="http://blueimp.github.io/jQuery-File-Upload/"></noscript> -->
				        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
				        <div class="fileupload-buttonbar">
				            <div>
				                <!-- The fileinput-button span is used to style the file input field as button -->
				                <span class="btn btn-success fileinput-button" style="float:left;">
				                    <i class="glyphicon glyphicon-plus"></i>
				                    <span>上传图片...</span>
				                    <input type="file" name="files"  multiple>
				                </span>
				                <label id="filesMsg" style="display:none;float:left;margin-bottom:0px;margin-left:15px;padding-top:4px;"><font color="red">必须上传图片！</font></label>
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

<input type="hidden" id="pics" value="${vo.pics }">
<input type="hidden" id="productId" value="${vo.id }">
<input type="hidden" id="cateId" value="${vo.categoryId }">
<input type="hidden" id="cateName" value="${vo.categoryName }">
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
<script src="<%=basePath%>/js/jquery.validate.min.js"></script>
<script src="<%=basePath%>/js/additional-methods.min.js"></script>

<!-- The main application script -->
<script src="<%=basePath%>/upload/main.js"></script>
<script src="<%=basePath%>/js/admin/productItem.js"></script>
<script type="text/javascript">
// 	$(document).ready(function() {
// 		var build = function(select) {
// 			var value = 'selectAllValue';
//             select.multiselect({
//                 includeSelectAllOption: true,
//                 selectAllValue: value
//             });
// 	        return false;
// 	    }($('#productSize'));
// 	})
// 	$("[rel=tooltip]").tooltip();
// 	$(function() {
// 		$('.demo-cancel-click').click(function() {
// 			return false;
// 		});
// 	});
</script>
  </body>
</html>

