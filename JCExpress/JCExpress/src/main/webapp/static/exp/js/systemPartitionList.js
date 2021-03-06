/**
 * 进行格式转换
 */
function statusFormatter(value) {
	if (value == 1) {
		return '<span class="label label-primary">正常</span>'
	} else if (value == 0) {
		return '<span class="label label-danger">冻结</span>'
	}
}

function singleFormatter(value) {
	if (value == 1) {
		return '<span class="label label-primary">单号</span>'
	} else if (value == 0) {
		return '<span class="label label-danger">双号</span>'
	}
}

function actionFormatter(value, row, index) {
	if (row.status == 1) {
		return [
				'<a class="freeze m-r-sm text-info" href="javascript:void(0)" title="冻结">',
				'<i class="glyphicon glyphicon-pause"></i>',
				'</a>',
				'<a class="edit m-r-sm text-warning" href="javascript:void(0)" title="编辑">',
				'<i class="glyphicon glyphicon-edit"></i>',
				'</a>',
				'<a class="remove m-r-sm text-danger" href="javascript:void(0)" title="删除">',
				'<i class="glyphicon glyphicon-remove"></i>', '</a>', ]
				.join('');
	} else {
		return [
				'<a class="normal m-r-sm text-info" href="javascript:void(0)" title="启用">',
				'<i class="glyphicon glyphicon-play"></i>',
				'</a>',
				'<a class="edit m-r-sm text-warning" href="javascript:void(0)" title="编辑">',
				'<i class="glyphicon glyphicon-edit"></i>',
				'</a>',
				'<a class="remove m-r-sm text-danger" href="javascript:void(0)" title="删除">',
				'<i class="glyphicon glyphicon-remove"></i>', '</a>', ]
				.join('');
	}
}

window.actionEvents = {
	'click .freeze' : function(e, value, row, index) {
		status_stop(index, row.id);
	},
	'click .normal' : function(e, value, row, index) {
		status_start(index, row.id);
	},
	'click .edit' : function(e, value, row, index) {
		layer_show(row.partition_code, baselocation + '/partition/list/' + row.id
				+ '/updatePartition', 800, 600)
	},
	'click .remove' : function(e, value, row, index) {
		partition_delete(index, row.id);
	}
};

/**
 * 隐藏分区
 */
function status_stop(obj, value) {
	layer.confirm('确认要隐藏该分区吗？', {
		btn : [ '确定', '取消' ]
	// 按钮
	}, function() {
		$.ajax({
			dataType : 'json',
			type : 'put',
			url : baselocation + '/partition/list/' + value + '/frozenPartition',
			success : function(result) {
				if (result.code == 1) {
					layer.msg('该分区隐藏成功!', {
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
 * 显示分区
 */
function status_start(index, value) {
	layer.confirm('确认要显示该分区吗？', {
		btn : [ '确定', '取消' ]
	// 按钮
	}, function() {
		$.ajax({
			dataType : 'json',
			type : 'put',
			url : baselocation + '/partition/list/' + value + '/frozenPartition',
			success : function(result) {
				if (result.code == 1) {
					layer.msg('该分区显示成功!', {
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
 * 删除分区
 */
function partition_delete(index, value) {
	layer.confirm('确认要删除该分区吗？', {
		btn : [ '确定', '取消' ]
	// 按钮
	}, function() {
		$.ajax({
			type : 'delete',
			dataType : 'json',
			url : baselocation + '/partition/list/' + value,
			success : function(result) {
				if (result.code == 1) {
					$('#table').bootstrapTable('hideRow', {
						index : index
					});
					layer.msg('该分区删除成功!', {
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
