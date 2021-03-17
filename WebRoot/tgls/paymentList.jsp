<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>支付方式列表</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- layui -->
<link rel="stylesheet" href="../layui/css/layui.css">
<script src="../layui/lay/modules/jquery.js"></script>
<!-- ueditor富文本编辑器 -->
<script type="text/javascript" src="../statics/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="../statics/ueditor/ueditor.all.js"></script>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.js"></script>
</head>
<body>
	<table class="layui-table">
		<colgroup>
			<col width="200">
			<col width="150">
			<col width="150">
		</colgroup>
		<thead>
			<tr>
				<th>支付方式名称</th>
				<th>显示顺序</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>支付宝</td>
				<td align="center">
					<button type="button" class="layui-btn layui-btn-normal">
						<i class="layui-icon layui-icon-up"></i>
					</button>
					<button type="button" class="layui-btn layui-btn-normal">
						<i class="layui-icon layui-icon-down"></i>
					</button>
				</td>
				<td align="center">
					<div id="layerDemo">
						<button data-type="auto" id="editor-button"
							class="layui-btn layui-btn-normal">编辑</button>
						<button data-method="offset" data-type="auto"
							class="layui-btn layui-btn-danger">删除</button>
					</div>
				</td>
			</tr>
			<tr>
				<td>工商银行网银</td>
				<td align="center">
					<button type="button" class="layui-btn layui-btn-normal">
						<i class="layui-icon layui-icon-up"></i>
					</button>
					<button type="button" class="layui-btn layui-btn-normal">
						<i class="layui-icon layui-icon-down"></i>
					</button>
				</td>
				<td align="center">
					<div id="layerDemo">
						<button data-type="auto" id = "editor-button"
							class="layui-btn layui-btn-normal">编辑</button>
						<button data-method="offset" data-type="auto"
							class="layui-btn layui-btn-danger">删除</button>
					</div>
				</td>
			</tr>
		</tbody>
	</table>






	<form class="layui-form " action="#" id = "hidden-form" style="display:none" >
		<div class="layui-form-item">
			<label class="layui-form-label">支付接口类型:</label>
			<div class="layui-input-inline">
				<select name="city" lay-verify="required" placeholder="0">
					<option value="">选择支付类型</option>
					<option value="0">支付宝担保交易</option>
					<option value="1">支付宝即时到账交易</option>
					<option value="2">支付宝纯网关接口</option>
					<option value="3">支付宝扫码支付</option>
					<option value="4">快钱</option>
					<option value="5">预付款账户支付</option>
					<option value="6">AllBuy</option>
					<option value="7">线下支付</option>
					<option value="8">银联在线</option>
					<option value="9">银联全渠道支付</option>
					<option value="10">网银在线</option>
					<option value="11">手机支付即时到账(双向确认)</option>
					<option value="12">云网支付</option>
					<option value="13">国付宝</option>
					<option value="14">中国在线支付网</option>
					<option value="15">环迅(IPS v3.0)</option>
					<option value="16">环迅易捷支付</option>
					<option value="17">贝宝中国</option>
					<option value="18">盛付通移动支付</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">支付方式名称:</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required" placeholder="" autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">名称不能为空，在1至60个字符之间</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">手续费:</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required" placeholder="0" autocomplete="off" class="layui-input">
			</div>
			<input type="radio" name="sex" value="nan" title="百分比">
			<div class="layui-form-mid layui-word-aux">支付手续费大小0-10000000之间</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">用于预付款充值:</label>
			<div class="layui-input-block">
				<input type="radio" name="sex" value="是" title="是" checked> 
				<input type="radio" name="sex" value="否" title="否">
			</div>
		</div>

		<div class="layui-form-item layui-form-text ">
			<label class="layui-form-label">备注:</label>
			<div class="layui-input-block">
				<!-- ueditor的容器 -->
				<textarea id="editor" type="text/plain" style="width: 1024px; height: 500px;"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button type="reset" class="layui-btn layui-btn-primary">取消</button>
				<button class="layui-btn"  lay-filter="formDemo">确认</button>
			</div>
		</div>
	</form>


</body>
<script src="../layui/layui.js" charset="utf-8"></script>
<script>
	layui.use('layer', function() { //独立版的layer无需执行这一句
		var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句 
		//触发事件
		var active = {
			offset : function(othis) {
				var type = othis.data('type'), text = othis.text();
				layer.open({
					type : 0,
					offset : type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
					,
					id : 'layerDemo' + type //防止重复弹出
					,
					content : '确定要执行该' + text + '操作吗？' + text + '后将不可恢复！',
					btn : [ '确定', '取消' ],
					btnAlign : 'c' //按钮居中
					,
					shade : 0 //不显示遮罩
					,
					yes : function() {
						layer.closeAll();
					}
				});
			}
			
		};
		$('#layerDemo .layui-btn').on('click', function() {
			var othis = $(this), method = othis.data('method');
			active[method] ? active[method].call(this, othis) : '';
		});
	});
</script>

<script>
	//Demo
	layui.use('form', function() {
		var form = layui.form;

		//监听提交
		form.on('submit(formDemo)', function(data) {
			layer.msg(JSON.stringify(data.field));
			return false;
		});
	});
</script>

<!-- ---------------------------------------------------------  -->
<script>
	var ue = UE.getEditor('editor');
	// 预加载  当页面的DOM结构加载完毕之后执行
</script>
<!-- 控制页面的显示与隐藏 -->
<script type="text/javascript">
	$(document).ready(function(){
	  $("#editor-button").click(function(){
	  $("#hidden-form").toggle();
	  });
	});
</script>

</html>