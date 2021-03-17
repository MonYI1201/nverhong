function login(){

	var logiName = $("#loginName").val();
	var password = $("#password").val();
	$.ajax({
		url:contextPath+"/Login",    //这个异步提交到 /Login urlPatterns = { "/Login" } 指定路径，action反射到方法
		method:"post",
		data:{loginName:loginName,password:password,action:"toLogin"},
		success:function(data){
			var str = JSON.parse(data);
			if(str.message == '登陆成功'){
				window.location.href="frame.jsp";
			}
			if(str.message == '登陆失败'){
				var layer = layui.layer;
				layer.msg('密码输入错误');
				window.location.href="/nverhong/Login?action=toView";
			}
		}
	});
}