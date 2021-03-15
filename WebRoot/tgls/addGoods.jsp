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

<form class="layui-form" action="">
  
  <div class="layui-form-item">
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
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">商品名称：</label>
    <div class="layui-input-inline">
      <input type="text" name="productName" required lay-verify="required" placeholder="请输入商品名称" autocomplete="off" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">商品价格</label>
    <div class="layui-input-inline">
      <input type="text" name="productPrice" required lay-verify="required" placeholder="请输入商品价格" autocomplete="off" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
    <label class="layui-form-label">商品库存</label>
    <div class="layui-input-inline">
      <input type="text" name="productStock" required lay-verify="required" placeholder="请输入商品库存" autocomplete="off" class="layui-input" 	
oninput = "value=value.replace(/[^\d]/g,'')">
    </div>
  </div>
</form>
 
 <div class="layui-upload">
  <button type="button" class="layui-btn" id="test2">多图片上传</button> 
  <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
    预览图：
    <div class="layui-upload-list" id="demo2"></div>
 </blockquote>
</div>

<script>
//Demo
layui.use(['form','upload'], function(){
  var form = layui.form
  ,upload = layui.upload;

  upload.render({
	    elem: '#test2'
	    ,url: 'https://httpbin.org/post' //改成您自己的上传接口
	    ,multiple: true
	    ,before: function(obj){
	      //预读本地文件示例，不支持ie8
	      obj.preview(function(index, file, result){
	        $('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">')
	      });
	    }
	    ,done: function(res){
	      //上传完毕
	    }
	  });
});
</script>

</body>
</html>