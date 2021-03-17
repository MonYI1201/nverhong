<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>发布中的商品</title>
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


	<%-- 	<div class="layui-form-item">
			<label class="layui-form-label">商品分类</label>
			<div class="layui-input-inline">
				<select name="catagory" id="category">
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
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">商品名称：</label>
			<div class="layui-input-inline">
				<input type="text" name="productName" id="productName" required lay-verify="required"
					placeholder="请输入商品名称" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">商品价格</label>
			<div class="layui-input-inline">
				<input type="text" name="productPrice" id="productPrice" required
					lay-verify="required" placeholder="请输入商品价格" autocomplete="off"
					class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">商品库存</label>
			<div class="layui-input-inline">
				<input type="text" name="productStock" id="productStock" required
					lay-verify="required" placeholder="请输入商品库存" autocomplete="off"
					class="layui-input" oninput="value=value.replace(/[^\d]/g,'')">
			</div>
		</div> --%>

	<div class="layui-upload">
		<button type="button" class="layui-btn" id="test2">增加图片</button>
		<button id="hideUpload" type="button" class="layui-btn">上传图片</button>
		<blockquote class="layui-elem-quote layui-quote-nm"
			style="margin-top: 10px;">
			预览图：
			<div class="layui-upload-list" id="demo2"></div>
		</blockquote>
	</div>

	<div class="layui-form-item">
		<div class="layui-input-special">
			<button class="layui-btn" id="button" type="button">立即提交</button>
			<button type="reset" class="layui-btn layui-btn-primary" id="reset">重置</button>
		</div>
	</div>

	<script>
 			var goodsArr = []; // 多个商品图片

			function imUpload(fieldName){ 	  	
				var uploadInst = upload.render({
			    	 elem: '#test2'
			    	,url: '/nverhong/ProductAdd?action=add' //改成您自己的上传接口
		    		,multiple: true
	 	   	 		,accept: 'images/*'
	 	   	    	,number: 6
	 	   	 		,method : 'post'
	  	   	 		,auto:false
	  	    		,bindAction:'#hideUpload'
	  	    		,choose: function(obj){
	  	    		//预读本地文件示例，不支持ie8
	  	    		obj.preview(function(index, file, result){
	        		$('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img" style="display:inline-block;max-width:20%;height:auto">')
	  	    	});
	 	  	}
		    		,done: function(res){
			    		if(res.code > 0){
							return layer.msg('上传失败');
					}
			   			if(fieldName == "goods"){
				    		goodsArr.push(res.id)	
			    	}
	        	 }
	 	 });
	}

			function login(paramstr){
				$.ajax({
					url:contextPath+"",
					method:"post",
					success:function(data){
					var str = JSON.parse(data);
						if(str.message == '发布成功'){
							window.location.href="";
						}
						if(str.message == '发布失败'){
							window.location.href="";
						}
				}
		});
	}

			function parseParams(data){
			try{
				var tempArr = [];
				for(var i in data){
				var key = encodeURIComponent(i);
				var value = encodeURIComponent(data[i]);
				tempArr.push(key + '=' + value);
			}
				var urlParamsStr = tempArr.join('$');
					return urlParamsStr;
			} catch(err) {
					return '';
		}
	}

			$('#button').click(function(){
					var data = {
						"productName" : $("#productName").val(),
						"productPrice" : $("#productPrice").val(),
						"productStock" : $("#productStock").val()
					}
					var str = parseParams(data);
					login(str);
	});
</script>

</body>
</html>