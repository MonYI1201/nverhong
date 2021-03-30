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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" href="${ctx}/layui/css/layui.css" media="all" type="text/css" />
<script src="${ctx}/layui/layui.all.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript"> var contextPath = "${ctx}";</script>
<script type="text/javascript">
    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/utf8-jsp/";
</script>
<script src="${ctx}/layui/lay/modules/layer.js"></script>
<%--  <script type="text/javascript" charset="utf-8" src="${ctx}/utf8-jsp/ueditor.config.js"></script>
 <script type="text/javascript" charset="utf-8" src="${ctx}/utf8-jsp/ueditor.all.min.js"> </script>
 <script type="text/javascript" charset="utf-8" src="${ctx}/utf8-jsp/lang/zh-cn/zh-cn.js"></script> --%>
</head>
<body>

 <div class="layui-form-item">
    <label class="layui-form-label">商品分类</label>
    <div class="layui-input-inline">
      <select name="quiz1" id="category1">
      <c:forEach items="${productCategoryVoList}" var="temp">
        <option value="${temp.productCategory.id}" >${temp.productCategory.name}</option>
        </c:forEach>
      </select>
    </div>
   <div class="layui-input-inline">
      <select name="quiz3" id="category2">
      <c:forEach items="${productCategoryVoList}" var="temp">
      <c:forEach items="${temp.productCategoryVoList}" var="vo">
        <option value="${vo.productCategory.id}">${vo.productCategory.name}</option>
        </c:forEach>
        </c:forEach>
      </select>
    </div>
    <div class="layui-input-inline">
      <select name="quiz3" id="category3">
      <c:forEach items="${productCategoryVoList}" var="temp">
      <c:forEach items="${temp.productCategoryVoList}" var="vo">
      <c:forEach items="${vo.productCategoryVoList}" var="vo2">
       <option value="${vo2.productCategory.id}">${vo2.productCategory.name}</option>
        </c:forEach>
        </c:forEach>
        </c:forEach>
      </select>
    </div>
  </div>
	<div class="layui-form-item">
	 <label class="layui-form-label">商品名称：</label>
	 <div class="layui-input-inline">
		 <input type="text" name="productName" id="productName" required
				lay-verify="required" placeholder="请输入商品名称" autocomplete="off"
				class="layui-input">
	 </div>
 </div>

 <div class="layui-form-item">
	 <label class="layui-form-label">商品价格</label>
	 <div class="layui-input-inline">
		 <input type="text" name="productPrice" id="productPrice" required
				lay-verify="required" placeholder="请输入商品价格" autocomplete="off"
				class="layui-input" oninput = "value=value.replace(/[^\d]/g,'')">
	 </div>
 </div>

	<div class="layui-form-item">
		<label class="layui-form-label">商品库存</label>
		<div class="layui-input-inline">
			<input type="text" name="productStock" id="productStock" required
				lay-verify="required" placeholder="请输入商品库存" autocomplete="off"
				class="layui-input" oninput="value=value.replace(/[^\d]/g,'')">
		</div>
	</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>商品图片</legend>
</fieldset> 

	<div class="layui-upload">
		<button type="button" class="layui-btn" id="test">增加图片</button>
		<button id="hideUpload" type="button" class="layui-btn">上传图片</button>
	</div>

	<div class="layui-upload">
		<div class="layui-upload-list">
			<table class="layui-table">
				<thead>
					<tr>
						<th>图片</th>
						<th>文件名</th>
						<th>大小</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="demoList"></tbody>
			</table>
		</div>
	</div>

<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
  <legend>品质检验</legend>
</fieldset> 

<div class="layui-upload">
		<button type="button" class="layui-btn" id="test2">增加图片</button>
		<button id="hideUpload2" type="button" class="layui-btn">上传图片</button>
</div>

	<div class="layui-upload">
 <div class="layui-upload-list">
	 <table class="layui-table">
		 <thead>
		 <tr>
			 <th>图片</th>
			 <th>文件名</th>
			 <th>大小</th>
			 <th>状态</th>
			 <th>操作</th>
		 </tr>
		 </thead>
		 <tbody id="demoList2"></tbody>
	 </table>
 </div>
 </div>


	<div class="layui-form-item">
		<div class="layui-input-special">
			<button class="layui-btn" id="button" type="button">立即提交</button>
			<button type="reset" class="layui-btn layui-btn-primary" id="reset">重置</button>
		</div>
	</div>

	<script type="text/javascript">

		/* var ue = UE.getEditor('editor'); */
	
		layui.use(['upload','layer','form'], function() {
			var goodsArr = []; // 多个商品图片
			var pzjyArr = []; // 多个品质检验图片
			var $ = layui.jquery;
			
			var form = layui.form;
			var $ = layui.jquery, upload = layui.upload;

			// 商品图片
			var demoListView = $('#demoList')
			  ,uploadListIns = upload.render({
			    elem: '#test'
			    ,url: contextPath + '/ProductAdd?action=productPictureAdd' //改成您自己的上传接口
			    ,accept: 'file'
			    ,multiple: true
			    ,auto: false
			    ,bindAction: '#hideUpload'
			    ,choose: function(obj){   
			      var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
			      //读取本地文件
			      obj.preview(function(index, file, result){
			        var tr = $(['<tr id="upload-'+ index +'">'
				      ,'<td>','<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">'
			          ,'<td>'+ file.name +'</td>'
			          ,'<td>'+ (file.size/1024).toFixed(1) +'kb</td>'
			          ,'<td>等待上传</td>'
			          ,'<td>'
			          ,'<button class="layui-btn layui-btn-xs demo-reload layui-hide">重传</button>'
			            ,'<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete">删除</button>'
			          ,'</td>'
			        ,'</tr>'].join(''));
			        
			        //单个重传
			        tr.find('.demo-reload').on('click', function(){
			          obj.upload(index, file);
			        });
			        
			        //删除
			        tr.find('.demo-delete').on('click', function(){
			          delete files[index]; //删除对应的文件
			          tr.remove();
			          uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
			        });
			        
			        demoListView.append(tr);
			      });
			    }
			    ,done: function(res, index, upload){
				    if(res.message == "上传成功"){
			       	 	var tr = demoListView.find('tr#upload-'+ index)
			       	 	,tds = tr.children();
			        	tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
			        	tds.eq(3).html(''); //清空操作
			     	   	if(res.data[0].type == 1){
				      		goodsArr.push(res.data[0].id);
				       }
			        return delete this.files[index]; //删除文件队列已经上传成功的文件
			        }
			       
			      this.error(index, upload);
			    }
			    ,error: function(index, upload){
			      var tr = demoListView.find('tr#upload-'+ index)
			      ,tds = tr.children();
			      tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');// 上传失败
			      tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
			    }
			  });

			// 品质检验图片上传
			var demoListView2 = $('#demoList2')
			  ,uploadListIns2 = upload.render({
			    elem: '#test2'
			    ,url: contextPath + '/ProductAdd?action=pzjyPictureAdd' //改成您自己的上传接口
			    ,accept: 'file'
			    ,multiple: true
			    ,auto: false
			    ,bindAction: '#hideUpload2'
			    ,choose: function(obj){   
			      var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
			      //读取本地文件
			      obj.preview(function(index, file, result){
			        var tr = $(['<tr id="upload-'+ index +'">'
				      ,'<td>','<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">'
			          ,'<td>'+ file.name +'</td>'
			          ,'<td>'+ (file.size/1024).toFixed(1) +'kb</td>'
			          ,'<td>等待上传</td>'
			          ,'<td>'
			          ,'<button class="layui-btn layui-btn-xs demo-reload1 layui-hide">重传</button>'
			            ,'<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete1">删除</button>'
			          ,'</td>'
			        ,'</tr>'].join(''));
			        
			        //单个重传
			        tr.find('.demo-reload1').on('click', function(){
			          obj.upload(index, file);
			        });
			        
			        //删除
			        tr.find('.demo-delete1').on('click', function(){
			          delete files[index]; //删除对应的文件
			          tr.remove();
			          uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
			        });
			        
			        demoListView2.append(tr);
			      });
			    }
			    ,done: function(res, index, upload){
				    if(res.message == "上传成功"){
			       	 	var tr = demoListView2.find('tr#upload-'+ index)
			       	 	,tds = tr.children();
			        	tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
			        	tds.eq(3).html(''); //清空操作
			     	   	if(res.data[0].type == 2){
				      		pzjyArr.push(res.data[0].id);
				       }
			        return delete this.files[index]; //删除文件队列已经上传成功的文件
			        }
			       
			      this.error(index, upload);
			    }
			    ,error: function(index, upload){
			      var tr = demoListView.find('tr#upload-'+ index)
			      ,tds = tr.children();
			      tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');// 上传失败
			      tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
			    }
			  });
			
			$('#button').click(function() {
				var pictureId = goodsArr.toString();
				var pzjyId = pzjyArr.toString(); 
				var productName = $('#productName').val();
				var productPrice =  $('#productPrice').val();
				var productStock =  $('#productStock').val();
				var category1 = $('#category1').val();
				var category2 = $('#category2').val();
				var category3 = $('#category3').val();
				$.ajax({
					url: contextPath+"/ProductAdd?action=productMessage",
					method:'post',
					data:{
						"goodsArr":pictureId,
						"pzjyArr":pzjyId,
						"productName":productName,
						"productPrice":productPrice,
						"productStock":productStock,
						"category1":category1,
						"category2":category2,
						"category3":category3
						},
					dataType:'json',
					success:function(data){
						if(data.data==1){
							var layer = layui.layer;
							layer.msg('发布成功');
							location.reload();
						}
					}
					});
				});
		});
		
	</script>

</body>
</html>