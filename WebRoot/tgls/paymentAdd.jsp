<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en-US">
<head>
<meta charset="utf-8">
<title>添加支付方式</title>
<link rel="stylesheet" href="../layui/css/layui.css">
<script src="../layui/layui.js"></script>
<!-- ueditor富文本编辑器 -->
<script type="text/javascript" src="../statics/ueditor/ueditor.config.js"></script>
<script type="text/javascript" src="../statics/ueditor/ueditor.all.js"></script>
</head>
<body>
	<form class="layui-form " action="#">
		<div class="layui-form-item">
			<label class="layui-form-label">支付接口类型</label>
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
			<label class="layui-form-label">支付方式名称</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required"
					placeholder="" autocomplete="off" class="layui-input">
			</div>
			<div class="layui-form-mid layui-word-aux">名称不能为空，在1至60个字符之间</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">手续费</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required"
					placeholder="0" autocomplete="off" class="layui-input">
			</div>
			<input type="radio" name="sex" value="nan" title="百分比">
			<div class="layui-form-mid layui-word-aux">支付手续费大小0-10000000之间</div>
		</div>
		
		<div class="layui-form-item layui-form-text ">
			<label class="layui-form-label">备注:</label>  
			<div class="layui-input-block">
				<!-- ueditor的容器 -->
				<textarea id="editor" type="text/plain" style="width:1024px;height:500px;"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button type="reset" class="layui-btn layui-btn-primary">取消</button>
				<button class="layui-btn" lay-submit lay-filter="formDemo">确认</button>

			</div>
		</div>
	</form>

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
	</script>
</body>
</html>