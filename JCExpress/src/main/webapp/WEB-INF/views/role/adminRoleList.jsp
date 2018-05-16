<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/base/base.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>角色管理</title>
<link rel="stylesheet" href="${maosta}/common/bootstrap-table/bootstrap-table.min.css" />
</head>

<body class="gray-bg">
<div class="wrapper wrapper-content">
  <div class="row">
    <div class="col-sm-12">
      <div class="ibox float-e-margins">
        <div class="ibox-title">
          <h5>角色管理</h5>
          <div class="ibox-tools"> <a class="collapse-link"><i class="fa fa-chevron-up"></i></a> <a class="close-link"><i class="fa fa-times"></i></a> </div>
        </div>
        <div class="ibox-content">
          <div class="row row-lg">
            <div class="col-sm-12">
              <div class="example-wrap">
                <div class="example">
                  <div id="toolbar" class="btn-group m-t-sm">
                      <button type="button" class="btn btn-default"  title="创建角色" onclick="layer_show('创建角色','${mao}/role/list/createRole','900','650')"> 创建角色 <i class="glyphicon glyphicon-plus"></i> </button>
                  </div>
                  <table id="table"
                         data-toggle="table"
                         data-height="600"
                         data-search="true"
                         data-show-refresh="true"
                         data-show-toggle="true"
                         data-show-export="true"
                         data-show-pagination-switch="true"
                         data-show-columns="true"
                         data-url="${mao}/role/list/"
                         data-pagination="true"
                         data-page-size="20"
                         data-page-list="[20, 50, 100, 200]"
                         data-side-pagination="server"
                         data-striped="true"
                         data-pagination="true"
                         data-sort-order="desc"
                         data-toolbar="#toolbar">
                    <thead>
                      <tr>
                        <th data-field="role_name" data-halign="center" data-align="center" data-sortable="true">角色名称</th>
                        <th data-field="role_sign" data-halign="center" data-align="center" data-sortable="true">角色标志</th>
                        <th data-field="status" data-formatter="statusFormatter" data-halign="center" data-align="center" data-sortable="true">状态</th> 
                        <th data-field="create_time" data-formatter="timeFormatter" data-halign="center" data-align="center" data-sortable="true">创建时间</th>
                        <th data-field="create_by" data-halign="center" data-align="center" data-sortable="true">创建者</th>                 
                        <th data-field="update_time" data-formatter="timeFormatter" data-halign="center" data-align="center" data-sortable="true">更新时间</th>
                        <th data-field="update_by" data-halign="center" data-align="center" data-sortable="true">更新者</th>
                        <th data-field="remarks" data-halign="center" data-align="center" data-sortable="true">备注</th>
                        <th data-formatter="actionFormatter" data-events="actionEvents" data-halign="center" data-align="center" data-sortable="true">操作</th>
                      </tr>
                    </thead>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<myfooter> 
	<script src="${maosta}/common/jquery/jquery-3.2.0.min.js"></script> 
  <!-- Bootstrap table --> 
  <script src="${maosta}/common/bootstrap-table/bootstrap-table.min.js"></script> 
  <script src="${maosta}/common/bootstrap-table/extensions/export/bootstrap-table-export.js"></script> 
  <script src="${maosta}/common/bootstrap-table/tableExport.js"></script> 
  <script src="${maosta}/common/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script> 
  <script src="${maosta}/hplus/js/plugins/layer/layer.min.js"></script>
  <!-- 自定义js --> 
  <script src="${maosta}/exp/js/adminRoleList.js"></script> 
</myfooter>
</body>
</html>