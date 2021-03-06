/**
 * 行政区域js
 */
var baselocation = "/JCExpress";
var setting = {
	async : {
		enable : true,
		type : "post",
		url : baselocation + '/region/list/select',
		autoParam : [ "areaCode" ]
	},
	data : {
		simpleData : {
			enable : true,
			idKey : "areaCode",
			pIdKey : "parentCode",
			rootPId : "0"
		},
		key : {
			/*
			 * name : 'name', title : 'name',
			 */
			url : "nourl"
		}
	},
	callback : {
		beforeClick : ztreeclick
	}
};
/**
 * 回调
 */
var parentCode = '0';
function ztreeclick(treeId, treeNode, clickFlag) {
	parentCode = treeNode.areaCode;
	if (treeNode.layer == '3') {
		return;
	}
	var url = baselocation + '/region/list/' + treeNode.areaCode;
	$('#table').bootstrapTable('refresh', {
		url : url
	});
}
// 类型转换
function timeFormatter(value) {
	return Format(new Date(value),"yyyy-MM-dd HH:mm:ss");
}
function statusFormatter(value) {
	if (value == 1) {
		return '<span class="label label-primary">正常</span>'
	} else if (value == 0) {
		return '<span class="label label-danger">隐藏</span>'
	}
}
// 展开备注
function detailFormatter(index, row) {
	var html = [];
	if (row.remark == "" || row.remark == null) {
		html.push('<p><b>备注：</b>' + '没有备注' + '</p>');
	} else {
		html.push('<p><b>备注：</b>' + row.remark + '</p>');
	}
	return html.join('');
}
/**
 * 初始化容器css
 */
function initialPage() {
	$("#treePanel").css('height', $(window).height() - 70);
	$(window).resize(function() {
		$("#treePanel").css('height', $(window).height() - 70);
		$('#table').bootstrapTable('resetView', {
			height : $(window).height() - 108
		});
	});
}
// 行菜单
function actionFormatter(value, row, index) {
	if (row.status == 1) {
		return [
				'<a class="freeze m-r-sm text-info" href="javascript:void(0)" title="冻结">',
				'<i class="glyphicon glyphicon-pause"></i>冻结',
				'</a>',
				'<a class="edit m-r-sm text-warning" href="javascript:void(0)" title="编辑">',
				'<i class="glyphicon glyphicon-edit"></i>编辑',
				'</a>',
				'<a class="remove m-r-sm text-danger" href="javascript:void(0)" title="删除">',
				'<i class="glyphicon glyphicon-remove"></i>删除', '</a>', ]
				.join('');
	} else {
		return [
				'<a class="normal m-r-sm text-info" href="javascript:void(0)" title="启用">',
				'<i class="glyphicon glyphicon-play"></i>启用',
				'</a>',
				'<a class="edit m-r-sm text-warning" href="javascript:void(0)" title="编辑">',
				'<i class="glyphicon glyphicon-edit"></i>编辑',
				'</a>',
				'<a class="remove m-r-sm text-danger" href="javascript:void(0)" title="删除">',
				'<i class="glyphicon glyphicon-remove"></i>删除', '</a>', ]
				.join('');
	}
}
window.actionEvents = {
	'click .freeze' : function(e, value, row, index) {
		status_stop(index, row.area_id);
	},
	'click .normal' : function(e, value, row, index) {
		status_start(index, row.area_id);
	},
	'click .edit' : function(e, value, row, index) {
		layer_show(row.name, baselocation + '/region/list/' + row.area_id
				+ '/updateRegion', 800, 600)
	},
	'click .remove' : function(e, value, row, index) {
		region_delete(index, row.area_id);
	}
};

function reloadDatagrid() {
	$('#table').bootstrapTable('refresh');
};
var $table = $('#table');
function getGrid() {
	$table.bootstrapTable({
		url : baselocation + '/region/list/0',
		height : $(window).height() - 98,
		striped : true,
		search : true,
		showRefresh : true,
		showColumns : true,
		minimumCountColumns : 2,
		clickToSelect : true,
		detailView : true,
		detailFormatter : 'detailFormatter',
		pagination : true,
		paginationLoop : false,
		sidePagination : 'server',
		pageSize : '20',
		silentSort : false,
		smartDisplay : false,
		escape : true,
		searchOnEnterKey : true,
		idField : 'area_id',
		maintainSelected : true,
		sortName : 'order_num',
		sortOrder : 'asc',
		columns : [ {
			field : 'area_id',
			title : '编号',
			sortable : true,
			align : 'center',
			halign : 'center'
		}, {
			field : 'area_code',
			title : '区域代码',
			align : 'center',
			halign : 'center'
		}, {
			field : 'name',
			title : '区域名称',
			align : 'center',
			halign : 'center'
		}, {
			field : 'layer',
			title : '层级',
			align : 'center',
			halign : 'center'
		}, {
			field : 'order_num',
			title : '排序',
			align : 'center',
			halign : 'center'
		}, {
			field : 'status',
			title : '状态',
			formatter : "statusFormatter",
			align : 'center',
			halign : 'center'
		}, {
			field : 'create_time',
			title : '创建时间',
			formatter : "timeFormatter",
			align : 'center',
			halign : 'center'
		}, {
			field : 'update_time',
			title : '更新时间',
			formatter : "timeFormatter",
			align : 'center',
			halign : 'center'
		}, {
			title : '操作',
			formatter : "actionFormatter",
			events : "actionEvents",
			align : 'center',
			halign : 'center'
		} ]
	});
}
/**
 * 初始化
 */
$(function() {
	// 初始化代码
	initialPage();
	$.fn.zTree.init($("#areaTree"), setting);
	getGrid();
});
/**
 * 增加
 */
function add_region() {
	// alert(parentCode);
	layer_show('创建区域', baselocation + '/region/list/' + parentCode
			+ '/addRegion', '800', '600')
}
/**
 * 隐藏区域
 */
function status_stop(obj, value) {
	layer.confirm('确认要隐藏该区域吗？', {
		btn : [ '确定', '取消' ]
	// 按钮
	}, function() {
		$.ajax({
			dataType : 'json',
			type : 'put',
			url : baselocation + '/region/list/' + value + '/frozenRegin',
			success : function(result) {
				if (result.code == 1) {
					layer.msg('该区域隐藏成功!', {
						icon : 5,
						time : 1000
					}, function() {
						$('#table').bootstrapTable('refresh');
					});
				} else {
					layer.alert(result.message, {
						icon : 2
					});
				}
			}
		})
	});
}

/**
 * 显示区域
 */
function status_start(index, value) {
	layer.confirm('确认要显示该区域吗？', {
		btn : [ '确定', '取消' ]
	// 按钮
	}, function() {
		$.ajax({
			dataType : 'json',
			type : 'put',
			url : baselocation + '/region/list/' + value + '/frozenRegin',
			success : function(result) {
				if (result.code == 1) {
					layer.msg('该区域显示成功!', {
						icon : 6,
						time : 1000
					}, function() {
						$('#table').bootstrapTable('refresh');
					});
				} else {
					layer.alert(result.message, {
						icon : 2
					});
				}
			}
		})
	});
}

/**
 * 删除区域
 */
function region_delete(index, value) {
	layer.confirm('确认要删除该区域吗？', {
		btn : [ '确定', '取消' ]
	// 按钮
	}, function() {
		$.ajax({
			type : 'delete',
			dataType : 'json',
			url : baselocation + '/region/list/' + value,
			success : function(result) {
				if (result.code == 1) {
					$('#table').bootstrapTable('hideRow', {
						index : index
					});
					layer.msg('该区域删除成功!', {
						icon : 1,
						time : 1000
					});
				} else {
					layer.alert(result.message, {
						icon : 2
					});
				}
			}
		})
	});
}

function Format(now,mask)
{
    var d = now;
    var zeroize = function (value, length)
    {
        if (!length) length = 2;
        value = String(value);
        for (var i = 0, zeros = ''; i < (length - value.length); i++)
        {
            zeros += '0';
        }
        return zeros + value;
    };
 
    return mask.replace(/"[^"]*"|'[^']*'|\b(?:d{1,4}|m{1,4}|yy(?:yy)?|([hHMstT])\1?|[lLZ])\b/g, function ($0)
    {
        switch ($0)
        {
            case 'd': return d.getDate();
            case 'dd': return zeroize(d.getDate());
            case 'ddd': return ['Sun', 'Mon', 'Tue', 'Wed', 'Thr', 'Fri', 'Sat'][d.getDay()];
            case 'dddd': return ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'][d.getDay()];
            case 'M': return d.getMonth() + 1;
            case 'MM': return zeroize(d.getMonth() + 1);
            case 'MMM': return ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'][d.getMonth()];
            case 'MMMM': return ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'][d.getMonth()];
            case 'yy': return String(d.getFullYear()).substr(2);
            case 'yyyy': return d.getFullYear();
            case 'h': return d.getHours() % 12 || 12;
            case 'hh': return zeroize(d.getHours() % 12 || 12);
            case 'H': return d.getHours();
            case 'HH': return zeroize(d.getHours());
            case 'm': return d.getMinutes();
            case 'mm': return zeroize(d.getMinutes());
            case 's': return d.getSeconds();
            case 'ss': return zeroize(d.getSeconds());
            case 'l': return zeroize(d.getMilliseconds(), 3);
            case 'L': var m = d.getMilliseconds();
                if (m > 99) m = Math.round(m / 10);
                return zeroize(m);
            case 'tt': return d.getHours() < 12 ? 'am' : 'pm';
            case 'TT': return d.getHours() < 12 ? 'AM' : 'PM';
            case 'Z': return d.toUTCString().match(/[A-Z]+$/);
            // Return quoted strings with the surrounding quotes removed
            default: return $0.substr(1, $0.length - 2);
        }
    });
};


