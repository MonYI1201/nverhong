<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<%
	String path = request.getContextPath();
%>
<html>
<head>
<meta charset="utf-8">
<title>出售中的商品</title>
<style>
layui-input-inline {
	width: 195px;
}
</style>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="../layui/css/layui.css" media="all"
	type="text/css" />
<script src="../layui/layui.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>



	<form class="layui-form">

		<div class="layui-form-item">

			<div class="layui-inline">
				<label class="layui-form-label">商品分类</label>
				<div class="layui-input-inline">
					<select name="city" lay-verify="">
						<option value="">全部分类</option>
						<option value="1">电子产品</option>
						<option value="2">服装</option>
						<option value="3">化妆品</option>
					</select>
				</div>
			</div>
			&nbsp; &nbsp; &nbsp; &nbsp;
			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="text" name="search" autocomplete="off"
						placeholder="商品名称" class="layui-input" />
				</div>
			</div>

			<div class="layui-inline">
				<div class="layui-input-inline">
					<input type="button" value="搜索" class="layui-btn" />
				</div>
			</div>

		</div>

	</form>

	<table id="demo" lay-filter="test"></table>

	<script type="text/javascript">
		// 加载form模块
		layui.use("form", function() {
			var form = layui.form;
		});

		layui.use('table', function() {
			var table = layui.table;

			//第一个实例
			table.render({
				elem : '#demo',
				height : 312,
				url : '<%=path%>/product' //数据接口
				,
				parseData : function(res) { //res 即为原始返回的数据
					return {
						"code" : res.status, //解析接口状态
						"msg" : res.message, //解析提示文本
						"count" : res.total, //解析数据长度
						"data" : res.data
					//解析数据列表
					};
				},
				page : true //开启分页
				,
				cols : [ [ //表头
				{
					field : 'name',
					title : '商品名称',
					width : 300,
					fixed : 'left'
				}, {
					field : 'categoryLEvel1Id',
					title : '商品分类',
					width : 150
				}, {
					field : 'price',
					title : '价格',
					width : 150
				}, {
					field : 'stock',
					title : '总库存',
					width : 150
				}, {
					field : 'sales',
					title : '销量',
					width : 150
				} ] ]
			});
		});
	</script>

</body>
</html>