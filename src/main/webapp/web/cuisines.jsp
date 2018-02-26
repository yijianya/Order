<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLTE 2 | Starter</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/dist/css/skins/skin-blue.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/commom.css">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- Main Header -->
<c:import url="inc/header.jsp"></c:import>
  <!-- Left side column. contains the logo and sidebar -->
<c:import url="inc/aside.jsp"></c:import>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Page Header
        <small>Optional description</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
        <li class="active">Here</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
		<div class="box">
            <div class="box-header with-border">
              <h3 class="box-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                    <button type="button" class="btn btn-block btn-success"  onclick="showMask()"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">添加</font></font></button>
              </font></font></h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table class="table table-bordered">
                <tbody ><tr>
                  <th style="width: 10px"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">id</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">菜系名称</font></font></th>
                  <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">菜品数量</font></font></th>
                  <th style="width: 40px"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"></font></font></th>
                </tr>
              </tbody>
              <!-- 已经有的菜系列表 -->
              <tbody id="cuisines_list">
              </tbody>
              </table>
            </div>
            <!-- /.box-body -->
            <div class="box-footer clearfix">
              <ul class="pagination pagination-sm no-margin pull-right">
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">«</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">1</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">2</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">3</font></font></a></li>
                <li><a href="#"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">»</font></font></a></li>
              </ul>
            </div>
          </div>
      
      
      
      
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <c:import url="inc/foot.jsp"></c:import>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane active" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">Recent Activity</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                <p>Will be 23 on April 24th</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">Tasks Progress</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:;">
              <h4 class="control-sidebar-subheading">
                Custom Template Design
                <span class="pull-right-container">
                    <span class="label label-danger pull-right">70%</span>
                  </span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        <form method="post">
          <h3 class="control-sidebar-heading">General Settings</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              Report panel usage
              <input type="checkbox" class="pull-right" checked>
            </label>

            <p>
              Some information about this general settings option
            </p>
          </div>
          <!-- /.form-group -->
        </form>
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
  immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- 遮罩和内容 -->
<div id="mask"></div>
<div class="box-body-mask" id="box-body-mask">
	<div class="box-body">
		<table class="table table-bordered">
		  <tbody>
			  <tr>
				<th>
					<font style="vertical-align: inherit;">
							<font style="vertical-align: inherit;">
								菜系名称
						</font>
					</font>
			  </th>
			  <th><input type="text" id="cuisinesName"></th>
			  </tr>
			  <tr>
			  <th>
			  	<button type="button" class="btn btn-block btn-success"  onclick="hideMask()" style="width: 54px;height: 37px">取消</button>
              </th>
              <th>
              	<button type="button" class="btn btn-block btn-success"  onclick="postFrom()" style="width: 54px;height: 37px">保存</button>
			  </th>
			 </tr>
			</tbody>
		</table>
	</div>
</div>
</body>

<!-- jQuery 3 -->
<script src="${pageContext.request.contextPath}/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath}/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/dist/js/adminlte.min.js"></script>
<!-- 全局变量和页面加载初始化设置 -->
<script type="text/javascript">
$(function(){
	//加载所有的菜系列表
	showCuisinesList();
}
);

//html模板
var cuisinesItemTemplate="<tr><td><font style='vertical-align: inherit;'><font style='vertical-align: inherit;'>%cuisinesId%</font></font></td>"
												+"<td><font style='vertical-align: inherit;'><font style='vertical-align: inherit;'>%cuisinesName%</font></font></td>"
												+"<td><div class='progress progress-xs'><div class='progress-bar progress-bar-danger' style='width: 55%'></div></div></td>"
												+"<td><button type='button' class='btn btn-block btn-success'  onclick='deleteCuisines(%id%)' style='width: 54px;height: 30px'>删除</button></td></tr>";

//获取模板的方法
function getCuisinesItemHtml(cuisines){
	var html = cuisinesItemTemplate;
	html = html.replace("%cuisinesId%",cuisines.id);
	html = html.replace("%cuisinesName%",cuisines.name);
	html = html.replace("%id%",cuisines.id);
	return html;
}
</script>

<script type="text/javascript">
function showMask(){
		//内容区域尺寸
		 var contentWidth=320;
	     var contentHeight=150;
	     //设置半透明遮罩层尺寸
		$("#mask").css({
					"width":$(document).width(),
				"height":$(document).height()
			});
		//设置内容层尺寸与位置
		$("#box-body-mask").css({
			"width":contentWidth,
			"height":contentHeight,
			"left":($(window).width()-contentWidth)/2,
			"top":($(window).height()-contentHeight)/2
		});
		//显示
   		$("#mask").show();
   		$("#box-body-mask").show();
}

	//隐藏遮罩显示
	function hideMask(){
		$("#mask").hide();
		$("#box-body-mask").hide();
	}
	
	//获取表单信息
	function postFrom(){
		var data = $("#cuisinesName").val();
		var url = "${pageContext.request.contextPath}/cuisines/addCuisines.do?name=";
		$.ajax({
			"url":url+data ,
			"type":"GET" ,
			"dataType":"json" ,
			"success": function(obj){
				if(obj.state==1){
					alert(obj.message);
					//关闭遮罩
					hideMask();
					//获取所有的菜系列表
					showCuisinesList();
				}else{
				 	alert(obj.message);
				}
			}
		});
	}
	
	//所有的菜系列表
	function showCuisinesList(){
		var url = "${pageContext.request.contextPath}/cuisines/cuisinesList.do";
		$.ajax({
			"url":url,
			"type":"GET",
			"dataType":"json",
			"success":function(obj){
				//清除原有的数据列表
				$("#cuisines_list").empty();
				var cuisines;
				var htmlString;
				for(var i=0;i<obj.data.length;i++){
					cuisines=obj.data[i];
					htmlString = getCuisinesItemHtml(cuisines);
					$("#cuisines_list").append(htmlString);
				}
			}
		});
	}
	
	//删除菜系
	function deleteCuisines(id){
		var comfirmResult = confirm("删除后无法恢复,确定删除吗?");
		if(comfirmResult  == false){
			return;
		}
		var url = "${pageContext.request.contextPath}/cuisines/deleteCuisines.do";
		$.ajax({
			"url":url,
			"data":"id="+id,
			"type":"GET",
			"dataType":"json",
			"success":function(obj){
				if(obj.state == 1){
					showCuisinesList()
				}
			}
		});
		
	}
	

</script>


</html>
