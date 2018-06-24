<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script>
	var search_type_goods = "none";
	var search_keyWord = "";
	var selectID;

	$(function() {
		optionAction();
		searchAction();
		goodsListInit();
		bootstrapValidatorInit();

		addGoodsAction();
		editGoodsAction();
		deleteGoodsAction();
		importGoodsAction();
		exportGoodsAction()
	})

	// 下拉框選擇動作
	function optionAction() {
		$(".dropOption").click(function() {
			var type = $(this).text();
			$("#search_input").val("");
			if (type == "所有") {
				$("#search_input").attr("readOnly", "true");
				search_type_goods = "searchAll";
			} else if (type == "职位ID") {
				$("#search_input").removeAttr("readOnly");
				search_type_goods = "searchByID";
			} else if (type == "职位名称") {
				$("#search_input").removeAttr("readOnly");
				search_type_goods = "searchByName";
			} else if (type == "客户名称") {
				$("#search_input").removeAttr("readOnly");
				search_type_goods = "searchByCustomerName";
			} else {
				$("#search_input").removeAttr("readOnly");
			}

			$("#search_type").text(type);
			$("#search_input").attr("placeholder", type);
		})
	}

	// 搜索动作
	function searchAction() {
		$('#search_button').click(function() {
			search_keyWord = $('#search_input').val();
			tableRefresh();
		})
	}

	// 分页查询参数
	function queryParams(params) {
		var temp = {
			limit : params.limit,
			offset : params.offset,
			searchType : search_type_goods,
			keyWord : search_keyWord
		}
		return temp;
	}

	// 表格初始化
	function goodsListInit() {
		$('#goodsList')
				.bootstrapTable(
						{
							columns : [
									{
										field : 'id',
										title : '职位ID'
									//sortable: true
									},
									{
										field : 'customerName',
										title : '客户名称'
									},
									{
										field : 'name',
										title : '职位名称'
									},
									{
										field : 'type',
										title : '职位类型'
									},
									{
										field : 'size',
										title : '招收人数'
									},
									{
										field : 'work',
										title : '工作经验'
									},
									{
										field : 'value',
										title : '职位要求',
									},
									{
										field : 'operation',
										title : '操作',
										formatter : function(value, row, index) {
											var s = '<button class="btn btn-info btn-sm edit"><span>编辑</span></button>';
											var d = '<button class="btn btn-danger btn-sm delete"><span>删除</span></button>';
											var fun = '';
											return s + ' ' + d;
										},
										events : {
											// 操作列中编辑按钮的动作
											'click .edit' : function(e, value,
													row, index) {
												selectID = row.id;
												rowEditOperation(row);
											},
											'click .delete' : function(e,
													value, row, index) {
												selectID = row.id;
												$('#deleteWarning_modal').modal(
														'show');
											}
										}
									} ],
							url : 'goodsManage/getGoodsList',
							onLoadError:function(status){
								handleAjaxError(status);
							},
							method : 'GET',
							queryParams : queryParams,
							sidePagination : "server",
							dataType : 'json',
							pagination : true,
							pageNumber : 1,
							pageSize : 5,
							pageList : [ 5, 10, 25, 50, 100 ],
							clickToSelect : true
						});
	}

	// 表格刷新
	function tableRefresh() {
		$('#goodsList').bootstrapTable('refresh', {
			query : {}
		});
	}

	// 行编辑操作
	function rowEditOperation(row) {
		$('#edit_modal').modal("show");

		// load info
		$('#goods_form_edit').bootstrapValidator("resetForm", true);
		$('#goods_name_edit').val(row.name);
		$('#goods_type_edit').val(row.type);
		$('#goods_size_edit').val(row.size);
		$('#goods_value_edit').val(row.value);
		$('#goods_work_edit').val(row.work);
		
		// 加载未分配仓库信息
		if(row.customerId != null){
			$('#goods_customerId_edit').append("<option value='" + row.customerId + "'>" + row.customerName + "</option>");
			$('#goods_customerId_edit').val(row.customerId);
			$("#goods_customerId_edit").attr("disabled", "true");
		}
		
	}

	// 添加供应商模态框数据校验
	function bootstrapValidatorInit() {
		$("#goods_form,#goods_form_edit").bootstrapValidator({
			message : 'This is not valid',
			feedbackIcons : {
				valid : 'glyphicon glyphicon-ok',
				invalid : 'glyphicon glyphicon-remove',
				validating : 'glyphicon glyphicon-refresh'
			},
			excluded : [ ':disabled' ],
			fields : {
				goods_name : {
					validators : {
						notEmpty : {
							message : '职位名称不能为空'
						}
					}
				},
				goods_value : {
					validators : {
						notEmpty : {
							message : '职位要求不能为空'
						}
					}
				},
				goods_size : {
					validators : {
						notEmpty : {
							message : '招收人数不能为空'
						}
					}
				},
				goods_type : {
					validators : {
						notEmpty : {
							message : '学历不能为空'
						}
					}
				},
				goods_work : {
					validators : {
						notEmpty : {
							message : '工作经验不能为空'
						}
					}
				},
				goods_customerId : {
					validators : {
						notEmpty : {
							message : '关联客户不能为空'
						}
					}
				}
			}
		})
	}

	// 编辑职位信息
	function editGoodsAction() {
		$('#edit_modal_submit').click(
				function() {
					$('#goods_form_edit').data('bootstrapValidator')
							.validate();
					if (!$('#goods_form_edit').data('bootstrapValidator')
							.isValid()) {
						return;
					}
					var data = {
						id : selectID,
						name : $('#goods_name_edit').val(),
						type : $('#goods_type_edit').val(),
						size : $('#goods_size_edit').val(),
						value : $('#goods_value_edit').val(),
						work : $('#goods_work_edit').val(),
						customerId : $('#goods_customerId_edit').val()
					}

					// ajax
					$.ajax({
						type : "POST",
						url : 'goodsManage/updateGoods',
						dataType : "json",
						contentType : "application/json",
						data : JSON.stringify(data),
						success : function(response) {
							$('#edit_modal').modal("hide");
							var type;
							var msg;
							var append = '';
							if (response.result == "success") {
								type = "success";
								msg = "职位信息更新成功";
							} else if (resposne == "error") {
								type = "error";
								msg = "职位信息更新失败"
							}
							shohunterg(type, msg, append);
							tableRefresh();
						},
						error : function(xhr, textStatus, errorThrow) {
							$('#edit_modal').modal("hide");
							// handler error
							handleAjaxError(xhr.status);
						}
					});
				});
	}

	// 刪除职位信息
	function deleteGoodsAction(){
		$('#delete_confirm').click(function(){
			var data = {
				"goodsID" : selectID
			}
			
			// ajax
			$.ajax({
				type : "GET",
				url : "goodsManage/deleteGoods",
				dataType : "json",
				contentType : "application/json",
				data : data,
				success : function(response){
					$('#deleteWarning_modal').modal("hide");
					var type;
					var msg;
					var append = '';
					if(response.result == "success"){
						type = "success";
						msg = "职位信息删除成功";
					}else{
						type = "error";
						msg = "职位信息删除失败";
					}
					shohunterg(type, msg, append);
					tableRefresh();
				},error : function(xhr, textStatus, errorThrow){
					$('#deleteWarning_modal').modal("hide");
					// handler error
					handleAjaxError(xhr.status);
				}
			})
			
			$('#deleteWarning_modal').modal('hide');
		})
	}

	// 添加职位信息
	function addGoodsAction() {
		$('#add_goods').click(function() {
			$('#add_modal').modal("show");
			$.ajax({
				type : 'GET',
				url : 'goodsManage/getCustomerList',
				dataType : 'json',
				contentTypr : 'application/json',
				success : function(response){
					data = response.data;
					$.each(data,function(index,element){
						$('#goods_customerId').append("<option value='" + element.customerId + "'>" + element.customerName + "</option>");
					})
				}
			});
		});
		
		/* $('#goods_customerId').on("change", function() {
			var select = document.getElementById("goods_customerId");
			var options = select.options;
			var index = select.selectedIndex;
			var selectedText = options[index].text;
			$('#goods_customerName').val(selectedText);
			alert($('#goods_customerId').val());
		}); */

		$('#add_modal_submit').click(function() {
			$('#goods_form').data('bootstrapValidator').validate();
			if (!$('#goods_form').data('bootstrapValidator')
					.isValid()) {
				return;
			}	
			var data = {
				name : $('#goods_name').val(),
				type : $('#goods_type').val(),
				size : $('#goods_size').val(),
				value : $('#goods_value').val(),
				work : $('#goods_work').val(),
				customerId : $('#goods_customerId').val()
			}
			// ajax
			$.ajax({
				type : "POST",
				url : "goodsManage/addGoods",
				dataType : "json",
				contentType : "application/json",
				data : JSON.stringify(data),
				success : function(response) {
					$('#add_modal').modal("hide");
					var msg;
					var type;
					var append = '';
					if (response.result == "success") {
						type = "success";
						msg = "职位添加成功";
					} else if (response.result == "error") {
						type = "error";
						msg = "职位添加失败";
					}
					shohunterg(type, msg, append);
					tableRefresh();

					// reset
					$('#goods_name').val("");
					$('#goods_type').val("");
					$('#goods_size').val("");
					$('#goods_value').val("");
					$('#goods_work').val("");
					$('#goods_customerId').val("");
					$('#goods_form').bootstrapValidator("resetForm", true);
				},
				error : function(xhr, textStatus, errorThrow) {
					$('#add_modal').modal("hide");
					// handler error
					handleAjaxError(xhr.status);
				}
			})
		})
	}

	var import_step = 1;
	var import_start = 1;
	var import_end = 3;
	// 导入职位信息
	function importGoodsAction() {
		$('#import_goods').click(function() {
			$('#import_modal').modal("show");
		});

		$('#previous').click(function() {
			if (import_step > import_start) {
				var preID = "step" + (import_step - 1)
				var nowID = "step" + import_step;

				$('#' + nowID).addClass("hide");
				$('#' + preID).removeClass("hide");
				import_step--;
			}
		})

		$('#next').click(function() {
			if (import_step < import_end) {
				var nowID = "step" + import_step;
				var nextID = "step" + (import_step + 1);

				$('#' + nowID).addClass("hide");
				$('#' + nextID).removeClass("hide");
				import_step++;
			}
		})

		$('#file').on("change", function() {
			$('#previous').addClass("hide");
			$('#next').addClass("hide");
			$('#submit').removeClass("hide");
		})

		$('#submit').click(function() {
			var nowID = "step" + import_end;
			$('#' + nowID).addClass("hide");
			$('#uploading').removeClass("hide");

			// next
			$('#confirm').removeClass("hide");
			$('#submit').addClass("hide");

			// ajax
			$.ajaxFileUpload({
				url : "goodsManage/importGoods",
				secureuri: false,
				dataType: 'json',
				fileElementId:"file",
				success : function(data, status){
					var total = 0;
					var available = 0;
					var msg1 = "职位信息导入成功";
					var msg2 = "职位信息导入失败";
					var info;

					$('#import_progress_bar').addClass("hide");
					if(data.result == "success"){
						total = data.total;
						available = data.available;
						info = msg1;
						$('#import_success').removeClass('hide');
					}else{
						info = msg2
						$('#import_error').removeClass('hide');
					}
					info = info + ",总条数：" + total + ",有效条数:" + available;
					$('#import_result').removeClass('hide');
					$('#import_info').text(info);
					$('#confirm').removeClass('disabled');
				},error : function(data, status){
					// handler error
					handleAjaxError(status);
				}
			})
		})

		$('#confirm').click(function() {
			// modal dissmiss
			importModalReset();
		})
	}

	// 导出职位信息
	function exportGoodsAction() {
		$('#export_goods').click(function() {
			$('#export_modal').modal("show");
		})

		$('#export_goods_download').click(function(){
			var data = {
				searchType : search_type_goods,
				keyWord : search_keyWord
			}
			var url = "goodsManage/exportGoods?" + $.param(data)
			window.open(url, '_blank');
			$('#export_modal').modal("hide");
		})
	}

	// 导入职位模态框重置
	function importModalReset(){
		var i;
		for(i = import_start; i <= import_end; i++){
			var step = "step" + i;
			$('#' + step).removeClass("hide")
		}
		for(i = import_start; i <= import_end; i++){
			var step = "step" + i;
			$('#' + step).addClass("hide")
		}
		$('#step' + import_start).removeClass("hide");

		$('#import_progress_bar').removeClass("hide");
		$('#import_result').removeClass("hide");
		$('#import_success').removeClass('hide');
		$('#import_error').removeClass('hide');
		$('#import_progress_bar').addClass("hide");
		$('#import_result').addClass("hide");
		$('#import_success').addClass('hide');
		$('#import_error').addClass('hide');
		$('#import_info').text("");
		$('#file').val("");

		$('#previous').removeClass("hide");
		$('#next').removeClass("hide");
		$('#submit').removeClass("hide");
		$('#confirm').removeClass("hide");
		$('#submit').addClass("hide");
		$('#confirm').addClass("hide");


		$('#file').on("change", function() {
			$('#previous').addClass("hide");
			$('#next').addClass("hide");
			$('#submit').removeClass("hide");
		})
		
		import_step = 1;
	}

</script>
<div class="panel panel-default">
	<ol class="breadcrumb">
		<li>职位信息管理</li>
	</ol>
	<div class="panel-body">
		<div class="row">
			<div class="col-md-1 col-sm-2">
				<div class="btn-group">
					<button class="btn btn-default dropdown-toggle"
						data-toggle="dropdown">
						<span id="search_type">查询方式</span> <span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu">
						<li><a href="javascript:void(0)" class="dropOption">职位ID</a></li>
						<li><a href="javascript:void(0)" class="dropOption">职位名称</a></li>
						<li><a href="javascript:void(0)" class="dropOption">客户名称</a></li>
						<li><a href="javascript:void(0)" class="dropOption">所有</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-9 col-sm-9">
				<div>
					<div class="col-md-3 col-sm-4">
						<input id="search_input" type="text" class="form-control"
							placeholder="职位ID">
					</div>
					<div class="col-md-2 col-sm-2">
						<button id="search_button" class="btn btn-success">
							<span class="glyphicon glyphicon-search"></span> <span>查询</span>
						</button>
					</div>
				</div>
			</div>
		</div>

		<div class="row" style="margin-top: 25px">
			<div class="col-md-5">
				<button class="btn btn-sm btn-default" id="add_goods">
					<span class="glyphicon glyphicon-plus"></span> <span>添加职位信息</span>
				</button>
				<button class="btn btn-sm btn-default" id="import_goods">
					<span class="glyphicon glyphicon-import"></span> <span>导入</span>
				</button>
				<button class="btn btn-sm btn-default" id="export_goods">
					<span class="glyphicon glyphicon-export"></span> <span>导出</span>
				</button>
			</div>
			<div class="col-md-5"></div>
		</div>

		<div class="row" style="margin-top: 15px">
			<div class="col-md-12">
				<table id="goodsList" class="table table-striped"></table>
			</div>
		</div>
	</div>
</div>

<!-- 添加职位信息模态框 -->
<div id="add_modal" class="modal fade" table-index="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true"
	data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">添加职位信息</h4>
			</div>
			<div class="modal-body">
				<!-- 模态框的内容 -->
				<div class="row">
					<div class="col-md-1 col-sm-1"></div>
					<div class="col-md-8 col-sm-8">
						<form class="form-horizontal" role="form" id="goods_form"
							style="margin-top: 25px">
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>职位名称：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<input type="text" class="form-control" id="goods_name"
										name="goods_name" placeholder="职位名称">
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>学历：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<select name="goods_type" class="form-control" id="goods_type">
										<option value="">-- 请选择 --</option>
										<option value="初中">初中</option>
										<option value="高中">高中</option>
										<option value="大专">大专</option>
										<option value="本科">本科</option>
										<option value="硕士">硕士</option>
										<option value="博士">博士</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>招收人数：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<input type="text" class="form-control" id="goods_size"
										name="goods_size" placeholder="招收人数">
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>工作经验：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<select name="goods_work" class="form-control" id="goods_work">
										<option value="">-- 请选择 --</option>
										<option value="1-2年">1-2年</option>
										<option value="3-4年">3-4年</option>
										<option value="5-6年">5-6年</option>
										<option value="7-8年">7-8年</option>
										<option value="9-10年">9-10年</option>
										<option value="10年以上">10年以上</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>关联客户：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<select name="goods_customerId" class="form-control" id="goods_customerId">
										<option value=""></option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>职位要求：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<textarea class="form-control" id="goods_value"
										name="goods_value" placeholder="职位要求" style="width: 100%;height: 125px;"></textarea>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-1 col-sm-1"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-default" type="button" data-dismiss="modal">
					<span>取消</span>
				</button>
				<button class="btn btn-success" type="button" id="add_modal_submit">
					<span>提交</span>
				</button>
			</div>
		</div>
	</div>
</div>

<!-- 导入职位信息模态框 -->
<div class="modal fade" id="import_modal" table-index="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true"
	data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">导入职位信息</h4>
			</div>
			<div class="modal-body">
				<div id="step1">
					<div class="row" style="margin-top: 15px">
						<div class="col-md-1 col-sm-1"></div>
						<div class="col-md-10 col-sm-10">
							<div>
								<h4>点击下面的下载按钮，下载职位信息电子表格</h4>
							</div>
							<div style="margin-top: 30px; margin-buttom: 15px">
								<a class="btn btn-info"
									href="commons/fileSource/download/goodsInfo.xlsx"
									target="_blank"> <span class="glyphicon glyphicon-download"></span>
									<span>下载</span>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div id="step2" class="hide">
					<div class="row" style="margin-top: 15px">
						<div class="col-md-1 col-sm-1"></div>
						<div class="col-md-10 col-sm-10">
							<div>
								<h4>请按照职位信息电子表格中指定的格式填写需要添加的一个或多个职位信息</h4>
							</div>
							<div class="alert alert-info"
								style="margin-top: 10px; margin-buttom: 30px">
								<p>注意：表格中各个列均不能为空，若存在未填写的项，则该条信息将不能成功导入</p>
							</div>
						</div>
					</div>
				</div>
				<div id="step3" class="hide">
					<div class="row" style="margin-top: 15px">
						<div class="col-md-1 col-sm-1"></div>
						<div class="col-md-8 col-sm-10">
							<div>
								<div>
									<h4>请点击下面上传文件按钮，上传填写好的职位信息电子表格</h4>
								</div>
								<div style="margin-top: 30px; margin-buttom: 15px">
									<span class="btn btn-info btn-file"> <span> <span
											class="glyphicon glyphicon-upload"></span> <span>上传文件</span>
									</span> 
									<form id="import_file_upload"><input type="file" id="file" name="file"></form>
									</span>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="hide" id="uploading">
					<div class="row" style="margin-top: 15px" id="import_progress_bar">
						<div class="col-md-1 col-sm-1"></div>
						<div class="col-md-10 col-sm-10"
							style="margin-top: 30px; margin-bottom: 30px">
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progreessbar" aria-valuenow="60" aria-valuemin="0"
									aria-valuemax="100" style="width: 100%;">
									<span class="sr-only">请稍后...</span>
								</div>
							</div>
							<!-- 
							<div style="text-align: center">
								<h4 id="import_info"></h4>
							</div>
							 -->
						</div>
						<div class="col-md-1 col-sm-1"></div>
					</div>
					<div class="row">
						<div class="col-md-4 col-sm-4"></div>
						<div class="col-md-4 col-sm-4">
							<div id="import_result" class="hide">
								<div id="import_success" class="hide" style="text-align: center;">
									<img src="media/icons/success-icon.png" alt=""
										style="width: 100px; height: 100px;">
								</div>
								<div id="import_error" class="hide" style="text-align: center;">
									<img src="media/icons/error-icon.png" alt=""
										style="width: 100px; height: 100px;">
								</div>
							</div>
						</div>
						<div class="col-md-4 col-sm-4"></div>
					</div>
					<div class="row" style="margin-top: 10px">
						<div class="col-md-3 col-sm-3"></div>
						<div class="col-md-6 col-sm-6" style="text-align: center;">
							<h4 id="import_info"></h4>
						</div>
						<div class="col-md-3 col-sm-3"></div>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn ben-default" type="button" id="previous">
					<span>上一步</span>
				</button>
				<button class="btn btn-success" type="button" id="next">
					<span>下一步</span>
				</button>
				<button class="btn btn-success hide" type="button" id="submit">
					<span>&nbsp;&nbsp;&nbsp;提交&nbsp;&nbsp;&nbsp;</span>
				</button>
				<button class="btn btn-success hide disabled" type="button"
					id="confirm" data-dismiss="modal">
					<span>&nbsp;&nbsp;&nbsp;确认&nbsp;&nbsp;&nbsp;</span>
				</button>
			</div>
		</div>
	</div>
</div>

<!-- 导出职位信息模态框 -->
<div class="modal fade" id="export_modal" table-index="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true"
	data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">导出职位信息</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 col-sm-3" style="text-align: center;">
						<img src="media/icons/warning-icon.png" alt=""
							style="width: 70px; height: 70px; margin-top: 20px;">
					</div>
					<div class="col-md-8 col-sm-8">
						<h3>是否确认导出职位信息</h3>
						<p>(注意：请确定要导出的职位信息，导出的内容为当前列表的搜索结果)</p>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-default" type="button" data-dismiss="modal">
					<span>取消</span>
				</button>
				<button class="btn btn-success" type="button" id="export_goods_download">
					<span>确认下载</span>
				</button>
			</div>
		</div>
	</div>
</div>

<!-- 删除提示模态框 -->
<div class="modal fade" id="deleteWarning_modal" table-index="-1"
	role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">警告</h4>
			</div>
			<div class="modal-body">
				<div class="row">
					<div class="col-md-3 col-sm-3" style="text-align: center;">
						<img src="media/icons/warning-icon.png" alt=""
							style="width: 70px; height: 70px; margin-top: 20px;">
					</div>
					<div class="col-md-8 col-sm-8">
						<h3>是否确认删除该条职位信息</h3>
						<p>(注意：若该职位已经有仓库进出库记录或有仓存记录，则该职位信息将不能删除成功。如需删除该职位的信息，请先确保该职位没有关联的仓库进出库记录或有仓存记录)</p>
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-default" type="button" data-dismiss="modal">
					<span>取消</span>
				</button>
				<button class="btn btn-danger" type="button" id="delete_confirm">
					<span>确认删除</span>
				</button>
			</div>
		</div>
	</div>
</div>

<!-- 编辑职位信息模态框 -->
<div id="edit_modal" class="modal fade" table-index="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true"
	data-backdrop="static">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button class="close" type="button" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">编辑职位信息</h4>
			</div>
			<div class="modal-body">
				<!-- 模态框的内容 -->
				<div class="row">
					<div class="col-md-1 col-sm-1"></div>
					<div class="col-md-8 col-sm-8">
						<form class="form-horizontal" role="form" id="goods_form_edit"
							style="margin-top: 25px">
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>职位名称：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<input type="text" class="form-control" id="goods_name_edit"
										name="goods_name" placeholder="职位名称">
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>学历：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<select name="goods_type" class="form-control" id="goods_type_edit">
										<option value="">-- 请选择 --</option>
										<option value="初中">初中</option>
										<option value="高中">高中</option>
										<option value="大专">大专</option>
										<option value="本科">本科</option>
										<option value="硕士">硕士</option>
										<option value="博士">博士</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>招收人数：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<input type="text" class="form-control" id="goods_size_edit"
										name="goods_size" placeholder="招收人数">
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>工作经验：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<select name="goods_work" class="form-control" id="goods_work_edit">
										<option value="">-- 请选择 --</option>
										<option value="1-2年">1-2年</option>
										<option value="3-4年">3-4年</option>
										<option value="5-6年">5-6年</option>
										<option value="7-8年">7-8年</option>
										<option value="9-10年">9-10年</option>
										<option value="10年以上">10年以上</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>关联客户：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<select name="goods_customerId" class="form-control" id="goods_customerId_edit">
										<option value=""></option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="" class="control-label col-md-4 col-sm-4"> <span>职位要求：</span>
								</label>
								<div class="col-md-8 col-sm-8">
									<textarea class="form-control" id="goods_value_edit"
										name="goods_value" placeholder="职位要求" style="width: 100%;height: 125px;"></textarea>
								</div>
							</div>
						</form>
					</div>
					<div class="col-md-1 col-sm-1"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="btn btn-default" type="button" data-dismiss="modal">
					<span>取消</span>
				</button>
				<button class="btn btn-success" type="button" id="edit_modal_submit">
					<span>确认更改</span>
				</button>
			</div>
		</div>
	</div>
</div>