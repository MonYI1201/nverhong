<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
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
<link rel="stylesheet" href="${ctx}/layui/css/layui.css" media="all"
	type="text/css" />
<script src="${ctx}/layui/layui.js" type="text/javascript"
	charset="utf-8"></script>
<script type="text/javascript">
	var contextPath = "${ctx}";
</script>
</head>
<body>
	<%--商品分类--%>
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
			<button class="layui-btn" id="button" type="button">搜索</button>
		</div>

		<div class="layui-input-inline">
			<button class="layui-btn" id="productADD" >发布</button>
		</div>
	</div>

	<table id="demo" lay-filter="test"></table>

	<%-- 下架删除按钮--%>
	<div class="layui-btn-container">
		<button class="layui-btn layui-btn-sm" lay-event="getCheckData"
			id="check">删除</button>
		<button class="layui-btn layui-btn-sm" lay-event="getCheckData"
			id="remove">下架</button>
	</div>

	<!-- 发布修改商品  -->
	<div style="display: none; padding: 20px" id="saveOrUpdateDiv">
		<form class="layui-form" action="" lay-filter="dataFrm" id="dataFrm">
			<div class="layui-form-item">
				<label class="layui-form-label">商品分类</label>
				<div class="layui-input-inline">
					<select name="categoryLevel1Id" id="category1">
						<c:forEach items="${productCategoryVoList}" var="temp">
							<option value="${temp.productCategory.id}" >${temp.productCategory.name}</option>
						</c:forEach>
					</select>
				</div>
				<div class="layui-input-inline">
					<select name="categoryLevel2Id" id="category2">
						<c:forEach items="${productCategoryVoList}" var="temp">
							<c:forEach items="${temp.productCategoryVoList}" var="vo">
								<option value="${vo.productCategory.id}">${vo.productCategory.name}</option>
							</c:forEach>
						</c:forEach>
					</select>
				</div>
				<div class="layui-input-inline">
					<select name="categoryLevel3Id" id="category3">
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
					<input type="text" name="name" id="productName" required
						   lay-verify="required" placeholder="请输入商品名称" autocomplete="off"
						   class="layui-input">
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">商品价格</label>
				<div class="layui-input-inline">
					<input type="text" maxlength="7" name="price" id="productPrice" required
						   lay-verify="required" placeholder="请输入商品价格" autocomplete="off"
						   class="layui-input" oninput = "value=value.replace(/[^\d]/g,'')">
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">商品库存</label>
				<div class="layui-input-inline">
					<input type="text" maxlength="7" name="stock" id="productStock" required
						   lay-verify="required" placeholder="请输入商品库存" autocomplete="off"
						   class="layui-input" oninput="value=value.replace(/[^\d]/g,'')">
				</div>
			</div>

			<div class="layui-form-item">
				<label class="layui-form-label">商品库存</label>
				<div class="layui-input-inline">
					<input type="text" maxlength="7" name="sell" id="productSell" required
						   lay-verify="required" placeholder="请输入商品库存" autocomplete="off"
						   class="layui-input" oninput="value=value.replace(/[^\d]/g,'')">
				</div>
			</div>

			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				<legend>商品图片</legend>
			</fieldset>

			<div class="layui-upload">
				<button type="button" class="layui-btn" id="photo1">增加图片</button>
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
				<button type="button" class="layui-btn" id="photo2">增加图片</button>
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
					<button class="layui-btn" id="addAdd" type="button">立即提交</button>
				</div>
			</div>
		</form>
	</div>

	<div style="display: none; padding: 20px" id="deleteProduct">
		<h3>您真的要删除吗？</h3>
		<button class="layui-btn" id="yes" type="button">确定</button>
		<button class="layui-btn" id="no" type="button">取消</button>
	</div>
<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

	<script type="text/javascript">
	
		layui.use(['upload', 'table', 'form' ,'layer'], function() {
			var $ = layui.jquery;
			var form = layui.form;
			var table = layui.table;
			var layer = layui.layer;
			var goodsArr = []; // 多个商品图片
			var pzjyArr = []; // 多个品质检验图片
			var $ = layui.jquery;
			var upload = layui.upload;
			var isClickProduct = false;
			var isClickPzjy = false;
			var data;

			//  选中删除
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
					url:contextPath+"/Product?action=delete&id="+str,
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

			// 选中下架
			$("#remove").on('click',function(){
				var checkStatus = table.checkStatus('demo');
				var selectCount = checkStatus.data.length;
				if(selectCount == 0){
					  layer.msg('批量下架至少选中一项数据',function(){});
					  return false;
			 	   }
					layer.confirm('真的要下架选中的项吗？',function(index){
					var id;
					for(var i=0; i<selectCount; i++){
					      id = checkStatus.data[i].id;
					console.log(id);
					$.ajax({
						url:contextPath+"/ProductOffShelf?action=productOffShelf&",
						type:"get",
						contentType : "application/x-www-form-urlencoded;charset=UTF-8",
						data :{"id":id},
					success:function(data){
							var layer = layui.layer;
							layer.msg("下架成功");
							location.reload();
						}
					});
					}
					})
				});

			// 显示数据并分页
			function getGoodsList(paramstr) {
				//第一个实例
				table.render({
					elem : '#demo',
					height : 400,
					method : 'GET',
					contentType : 'charset=UTF-8',
					url : contextPath+'/Product?action=getAllProduct&' + paramstr, //数据接口
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
						field : 'zizeng',
						title : '编号',
						width : 100,
						sort : true,
						type: 'numbers'
					}, {
						field : 'fileName',
						title : '图片',
						width : 400,
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
						width : 300
					}, {
						field : 'categoryName',
						title : '商品分类',
						width : 200
					}, {
						field : 'price',
						title : '价格',
						width : 150
					}, {
						field : 'stock',
						title : '总库存',
						width : 150
					}, {
						field : 'sell',
						title : '销量',
						width : 150
					}, {
						fixed: 'right', 
						title : '操作',
						width : 150,
						toolbar: '#barDemo',
					} ] ]
				});
			}

			// json转url参数
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

			// 点击搜索
			$("#button").click(function() {
				var data = {
					"keyword" : $("#keyword").val(),
					"category" : $("#category").val()
							};
				console.log(data);
				var str = parseParams(data);
				getGoodsList(str);
			});
			getGoodsList();

			// 商品图片
			var demoListView = $('#demoList')
			  ,uploadListIns = upload.render({
			    elem: '#photo1'
			    ,url: contextPath + '/ProductAdd?action=productPictureAdd'
			    ,accept: 'file'
			    ,multiple: true
			    ,auto: false
			    ,bindAction: '#hideUpload'
			    ,choose: function(obj){   
			      var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
			      //读取本地文件
			      obj.preview(function(index, file, result){
			        var tr = $(['<tr id="upload-'+ index +'">'
				      ,'<td>','<img id="findPicture" src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">'
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
				        isClickProduct =true;
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
			    elem: '#photo2'
			    ,url: contextPath + '/ProductAdd?action=pzjyPictureAdd'
			    ,accept: 'file'
			    ,multiple: true
			    ,auto: false
			    ,bindAction: '#hideUpload2'
			    ,choose: function(obj){   
			      var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
			      //读取本地文件
			      obj.preview(function(index, file, result){
			        var tr = $(['<tr id="upload-'+ index +'">'
				      ,'<td>','<img  src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img">'
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
                        isClickPzjy =true;
			       	 	var tr = demoListView2.find('tr#upload-'+ index)
			       	 	,tds = tr.children();
			        	tds.eq(2).html('<span style="color: #a0b86a;">上传成功</span>');
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

			// 点击发布按钮
			 $('#productADD').on("click",function() {
					openProduct(data,1);
			 });

		    function openProduct(data,type) {
				var down = layer.open({
		          type : 1,
		          title : "修改商品信息",
				  content : $("#saveOrUpdateDiv"),
		          area : [ '900px', '500px' ],
				  end:function(){
		          	location.reload();
				  },
		          success : function() {
					  $('#addAdd').click(function(){
						  var pictureId = goodsArr.toString();
						  var pzjyId = pzjyArr.toString();
						  var productName = $('#productName').val();
						  var productPrice = $('#productPrice').val();
						  var productStock = $('#productStock').val();
						  var productSell = $('#productSell').val();
						  var category1 = $('#category1').val();
						  var category2 = $('#category2').val();
						  var category3 = $('#category3').val();

						  // 判断商品图片是否已上传
						  if(isClickProduct == false){
							  layer.msg("请上传图片！");
							  return false;
						  }
						  // 判断品质检验图片是否已上传
						  if(isClickPzjy == false){
							  layer.msg("请上传图片！");
							  return false;
						  }
						  // 判断是否输入了商品名称
						  if(productName == null || productName == ""){
							  layer.msg("请输入商品名称");
							  return false;
						  }
						  // 判断是否输入了商品价格
						  if(productPrice == null || productPrice == ""){
							  layer.msg("请输入商品价格");
							  return false;
						  }
						  // 判断是否输入了商品库存
						  if(productStock == null || productStock == ""){
							  layer.msg("请输入商品库存");
							  return false;
						  }
						  // 发布
						  if(type == 1){

							  $.ajax({
								  url: contextPath + "/ProductAdd?action=productMessage",
								  method: 'post',
								  data: {
									  "goodsArr": pictureId,
									  "pzjyArr": pzjyId,
									  "productName": productName,
									  "productPrice": productPrice,
									  "productStock": productStock,
									  'productSell' : productSell,
									  "category1": category1,
									  "category2": category2,
									  "category3": category3
								  },
								  dataType: 'json',
								  success: function (data) {
									  setTimeout(function () { layer.close(down)}, 800);
                                      layer.msg('发布成功');
								  }
							  });

						  }
						  // 修改
						  if(type == 2) {
						  	var id = data.id;
							  $.ajax({
								  url: contextPath + "/ProductUpdate?action=productUpdate",
								  method: 'post',
								  data: {
								  	  "id": id,
									  "goodsArr": pictureId,
									  "pzjyArr": pzjyId,
									  "productName": productName,
									  "productPrice": productPrice,
									  "productStock": productStock,
									  "productSell" : productSell,
									  "category1": category1,
									  "category2": category2,
									  "category3": category3
								  },
								  dataType: 'json',
								  success: function (data) {
										  layer.msg('修改成功');
										  setTimeout(function () { layer.close(down) }, 800);
								  }
							  });
						  }

					  });
		          }
		         });
		        }

		      function openDelete(data){
				  layer.open({
					  type: 1,
					  title: "删除商品",
					  content: $("#deleteProduct"),
					  area: ['200px', '150px'],
					  success : function(index){
					  	console.log(index);
					  		$('#yes').click(function(){
					  			var id = data.id;
								$.ajax({
									url:contextPath+"/Product?action=delete",
									type:"get",
									contentType : "application/x-www-form-urlencoded;charset=UTF-8",
									data :{"id":id},
									success:function(data){
										layer.msg('删除成功');
										setTimeout(function () { location.reload(); }, 800);
									}
								});
						  });
						  $('#no').click(function() {
							  location.reload();
						  });
						  }
				  });
			  }

			 //监听行工具事件
			  table.on('tool(test)', function(obj){
			   data = obj.data;
			    //console.log(obj)
			    if (obj.event === 'del') { //删除
     		  	 	openDelete(data);
   			   }  else if(obj.event === 'edit'){
			     	openProduct(data,2);
					form.val("dataFrm", data);
			    }
			  });


		})

</script>

</body>
</html>