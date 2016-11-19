<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8" />
    <title>位置详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- basic styles -->
    <link rel="stylesheet" href="resources/assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="resources/assets/css/font-awesome.min.css" />
    <link rel="stylesheet" href="resources/assets/css/ace.min.css" />
    <link rel="stylesheet" href="resources/assets/css/ace-rtl.min.css" />
    <link rel="stylesheet" href="resources/assets/css/ace-skins.min.css" />
    <link rel="stylesheet" href="resources/css/ostp.css" />
   <!--  <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css"> -->
    
    <script src="resources/assets/js/ace-extra.min.js"></script>
    <script type="text/javascript" src="resources/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="resources/assets/js/jquery-2.0.3.min.js"></script>
	<script type="text/javascript" src="resources/assets/js/bootstrap.min.js"></script>
	<!-- <script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body>
<!--将这一部分1转化成ifream-->
<div class="main-content"  style="margin-left:0;margin-bottom:0;">
    <div class="breadcrumbs" id="breadcrumbs">
        <script type="text/javascript">
            try{ace.settings.check('breadcrumbs' , 'fixed')}catch(e){}
        </script>

        <ul class="breadcrumb">
            <li>
                <i class="icon-download"></i>
                <a href="#">位置管理</a>
            </li>
            <li class="active">位置详情</li>
        </ul><!-- .breadcrumb -->

    </div>

    <div class="page-content">
        <div class="page-header">
            <h1>
                	位置详情
                <small>
                    <i class="icon-double-angle-right"></i>
                    	查看
                </small>
            </h1>
        </div><!-- /.page-header -->

        <div class="row">
            <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->

                <!--<div class="alert alert-block alert-success">
                    <button type="button" class="close" data-dismiss="alert">
                        <i class="icon-remove"></i>
                    </button>

                    <i class="icon-ok green"></i>

                    欢迎进入
                    <strong class="green">
                        OSTP后台管理系统
                        <small>(v1.0)</small>
                    </strong>
                </div>-->

                <div class="row">
                    <div class="col-xs-12">
                        <!-- PAGE CONTENT BEGINS -->

                        <form>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">适宜去的时间</label>

                                        <div class="col-sm-8">
                                            <input type="text" value="${positionDetailInfo.positiontime }" id="form-field-1" placeholder="yyyy-mm-dd" class="form-control" required="required" oninvalid="setCustomValidity('请输入发布时间')" oninput="setCustomValidity('')" disabled="disabled">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">运动类型</label>

                                        <div class="col-sm-8">
                                            <!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
                                            <select class="form-control" disabled="disabled">
                                                <option>${positionDetailInfo.basicSportType.sporttypename }</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">位置类型</label>

                                        <div class="col-sm-8">
                                            <!--<input type="text" id="form-field-1" placeholder="Username" class="form-control">-->
                                            <select class="form-control" disabled="disabled">
                                                <option>${positionDetailInfo.positionTypeInfo.positiontypename }</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">位置名称</label>

                                        <div class="col-sm-8">
                                            <input type="text" value="${positionDetailInfo.positionname }" id="form-field-1" placeholder="title" class="form-control" required="required" oninvalid="setCustomValidity('请输入资讯标题')" oninput="setCustomValidity('')" disabled="disabled">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">位置坐标</label>

                                        <div class="col-sm-8">
                                            <input type="text" id="form-field-1" value="${positionDetailInfo.positioncoordinate }" placeholder="origin" class="form-control" required="required" oninvalid="setCustomValidity('请输入文章来源')" oninput="setCustomValidity('')" disabled="disabled">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label no-padding-right" for="form-field-1">图片</label>

                                        <div class="col-sm-8">
                                            <c:choose>
                                        		<c:when test="${positionDetailInfo.positionthumbnailpicture == null }">
                                        			没有图片
                                        		</c:when>
                                        		<c:otherwise>
                                        			<img alt="缩略图" title="缩略图" src="${positionDetailInfo.positionthumbnailpicture }">
                                        		</c:otherwise>
                                        	</c:choose>
                                            <!-- 按钮触发模态框 -->
											<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
												查看原图
											</button>
											<!-- 模态框（Modal） -->
											<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
												<div class="modal-dialog">
													<div class="modal-content">
														<div class="modal-header">
															<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
																&times;
															</button>
															<h4 class="modal-title" id="myModalLabel">
																原图
															</h4>
														</div>
														<div class="modal-body">
															<img alt="原图" title="原图" src="${positionDetailInfo.positionpicture }">
														</div>
														<div class="modal-footer">
															<button type="button" class="btn btn-default" data-dismiss="modal">关闭
															</button>
														</div>
													</div><!-- /.modal-content -->
												</div><!-- /.modal -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <br />
                            <div class="row">
                                <div class="form-group">
                                    <label class="col-xs-12 control-label no-padding-right" for="form-field-1">位置详细信息</label>
                                    <div class="col-xs-12">
                                        <textarea class="form-control" name="financial.bz" id="form-field-1" placeholder="资讯内容" style="margin: 0 auto;" disabled="disabled">${positionDetailInfo.positiondescribe }</textarea>
                                        <p class="help-block text-danger"></p>
                                        <script type="text/javascript">CKEDITOR.replace("financial.bz");</script>
                                    </div>
                                </div>
                            </div>
                        </form>

                    </div><!-- /.col -->
                </div><!-- /.row -->

                <!-- PAGE CONTENT ENDS -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.page-content -->
</div><!-- /.main-content -->
</body>
</html>