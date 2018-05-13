<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/base/base.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>更新区域</title>
<link rel="stylesheet" href="${maosta}/common/icheck/flat/green.css" />
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content">
  <div class="row">
    <div class="col-sm-12">
      <div class="ibox float-e-margins">
        <div class="ibox-title">
         <h5>修改区域<small><b>用户个人信息时应当遵循合法、正当、必要的原则，明示目的、方式和范围，并经用户同意<big>♂</big></b></small></h5>
          <div class="ibox-tools"> <a class="collapse-link"><i class="fa fa-chevron-up"></i></a> <a class="close-link"><i class="fa fa-times"></i></a> </div>
        </div>
        <div class="ibox-content">
          <form id="form" class="form-horizontal" action="${mao}/region/list/${area.area_id}" data-method="put">
            <div class="form-group m-t">
              <label class="col-sm-2 col-xs-offset-1 control-label">区域代码：</label>
              <div class="col-sm-5">
                <input type="text" maxlength="5" class="form-control" name="area_code" value="${area.area_code}">
                <input type="hidden" maxlength="5" class="form-control" name="parent_code" value="${area.parent_code}">
              </div>
            </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group m-t">
              <label class="col-sm-2 col-xs-offset-1 control-label">区域名称：</label>
              <div class="col-sm-5">
                <input type="text" maxlength="10" class="form-control" name="name" value="${area.name}">
              </div>
            </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group m-t">
              <label class="col-sm-2 col-xs-offset-1 control-label">上级区域：</label>
              <div class="col-sm-5">
                <input type="text" disabled="" class="form-control" value="${fulin:regionName(area.parent_code) }">
              </div>
            </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group">
              <label class="col-sm-2 col-xs-offset-1 control-label">排序：</label>
              <div class="col-sm-5">
                <input type="text" class="form-control" name="order_num" value="${area.order_num}">
              </div>
            </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group">
              <label class="col-sm-2 col-xs-offset-1 control-label">是否可用：</label>
              <div class="col-sm-6 text-center">
                <label class="radio-inline">
                  <input type="radio" name="status" value="1" ${area.status eq '1' ? 'checked="checked"':''}>
               			  开启</label>
                <label class="radio-inline">
                  <input type="radio" name="status"  value="0" ${area.status eq '0' ? 'checked="checked"':''}>
                		  隐藏</label>
                <label class="radio-inline status-tip">
              </div>
            </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group">
              <label class="col-sm-2 col-xs-offset-1 control-label">区域备注：</label>
              <div class="col-sm-5">
                <textarea class="form-control" rows="2" name="remark" placeholder="请输入消息...">${area.remark}</textarea>
              </div>
            </div>
            <div class="hr-line-dashed"></div>
            <div class="form-group">
              <div class="col-sm-12 text-center">
                <button class="btn btn-primary" type="submit">提交</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<myfooter> 
  <!-- iCheck --> 
  <script src="${maosta}/common/icheck/icheck.min.js"></script> 
  <!-- bootstrapvalidator前端验证框架 --> 
  <script src="${maosta}/common/bootstrapvalidator/js/bootstrapValidator.min.js"></script> 
  <!-- 自定义js --> 
  <script src="${maosta}/exp/js/systemRegion.js"></script> 
</myfooter>
</body>
</html>
