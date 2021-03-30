<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>下架的商品</title>
<style>
layui-input-inline {
	width: 195px;
}
</style>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${ctx}/layui/css/layui.css" media="all"
	type="text/css" />
<script src="${ctx}/layui/layui.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript">
	var contextPath = "${ctx}";
</script>
</head>
<body>

	<div class="layui-form">
		<label class="layui-form-label">商品分类</label>
		<div class="layui-input-inline">
			<select name="quiz" id="category">
				<option value="">全部分类</option>
				<c:forEach items="${productCategoryVoList}" var="temp">
					<optgroup label="${temp.productCategory.name}">
						<c:forEach items="${temp.productCategoryVoList}" var="vo">
							<option value="${vo.productCategory.id}">${vo.productCategory.name}</option>
						</c:forEach>
					</optgroup>
				</c:forEach>
			</select>
		</div>

		<div class="layui-input-inline">
			<input type="text" name="keyword" id="keyword" lay-verify="title"
				autocomplete="off" placeholder="请输入商品" class="layui-input" value="" />
		</div>
		<div class="layui-input-inline">
			<button class="layui-btn" id="button">搜索</button>
		</div>

		<div class="layui-input-inline">
			<a class="layui-btn" href="http://www.baidu.com">发布商品</a>
		</div>
	</div>

	<table id="demo" lay-filter="test"></table>

	
  <div class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData" id="check">删除</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckData" id="up">上架</button>
  </div>

	<script type="text/javascript">
	
		layui.use([ 'table', 'form' ], function() {
			var $ = layui.jquery;
			var form = layui.form
			var table = layui.table;
			
			 $("#check").on('click',function(){
			 //获取选中状态            
				var checkStatus = table.checkStatus('demo');
			 //获取选中数量
				var selectCount = checkStatus.data.length;
				  if(selectCount == 0){
				  layer.msg('批量删除至少选中一项数据',function(){});
				  return false;
		 	   }
				layer.confirm('真的要删除选中的项吗？',function(index){
				var str="";
				for(var i=0; i<selectCount; i++){
				      str = checkStatus.data[i].id;
				$.ajax({
					url:"/nverhong/ProductOffShelf?action=delete&id="+str,
					type:"get",
					contentType : "application/x-www-form-urlencoded;charset=UTF-8",
					data :{"str":str},
				success:function(data){
						var layer = layui.layer;
						layer.msg("删除成功");
						location.reload();
					}
				});
				}
				})
			});

			$("#up").on('click',function(){
				 //获取选中状态            
					var checkStatus = table.checkStatus('demo');
				 //获取选中数量
					var selectCount = checkStatus.data.length;
					  if(selectCount == 0){
					  layer.msg('批量上架至少选中一项数据',function(){});
					  return false;
			 	   }
					layer.confirm('真的要上架选中的项吗？',function(index){
					var str="";
					for(var i=0; i<selectCount; i++){
					      str = checkStatus.data[i].id;
					$.ajax({
						url:"/nverhong/ProductOffShelf?action=up&id="+str,
						type:"get",
						contentType : "application/x-www-form-urlencoded;charset=UTF-8",
						data :{"str":str},
					success:function(data){
							var layer = layui.layer;
							layer.msg("上架成功");
							location.reload();
						}
					});
					}
					})
				});
				
			function getGoodsList(paramstr) {

				//第一个实例
				table.render({
					elem : '#demo',
					height : 400,
					method : 'GET',
					contentType : 'charset=UTF-8',
					url : contextPath + '//ProductOffShelf?action=selectOffShelfProduct&' + paramstr, //数据接口
					parseData : function(res) { //res 即为原始返回的数据
						return {
							"code" : res.status, //解析接口状态
							"msg" : res.message, //解析提示文本
							"count" : res.total, //解析数据长度
							"data" : res.data
						//解析数据列表
						};
					},
					toolbar: '#toolbarDemo',
					page : true,//开启分页
					limit : 5,
					cols : [ [ //表头
					{
						type : 'checkbox'
					}, {
						field : 'id',
						title : '编号',
						width : 100,
						sort : true
					}, {
						field : 'fileName',
						title : '图片',
						width : 200,
							templet: function(data){
								var str = '<div id="layer-photos-demo" class="layer-photos-demo">';
								try{
									for(let i = 0; i < data.picGoodsList.length ; ++i){
										let image = data.picGoodsList[i].fileUrl
										str += '<img  layer-src='+image+' src="'+image+'"  width="32%" height="32%" style="margin-right: 10px">';
									}
								}catch (e) {
								}
								str += '</div>';
								return str;
							}
					}, {
						field : 'name',
						title : '商品名称',
						width : 300,

					}, {
						field : 'categoryName',
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
					},{
						field : 'sell',
						title : '销量',
						width : 150
					},{
						title : '操作',
						width : 150,
						templet : function() {
							return '<a href="http://www.baidu.com" >修改</a>';
						}
					} ] ]
				});
			}

			//json转url参数
			function parseParams(data) {
				try {
					var tempArr = [];
					for ( var i in data) {
						var key = encodeURIComponent(i);
						var value = encodeURIComponent(data[i]);
						tempArr.push(key + '=' + value);
					}
					var urlParamsStr = tempArr.join('&');
					return urlParamsStr;
				} catch (err) {
					return '';
				}
			}

			
			$("#button").click(function() {
				var data = {
					"keyword" : $("#keyword").val(),
					"category" : $("#category").val()
									}
				console.log(data)
				var str = parseParams(data);
				getGoodsList(str);
			})
			getGoodsList();

			
		});

		
	</script>

</body>
</html>