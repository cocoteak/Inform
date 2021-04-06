<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			response.setContentType("text/html;charset=utf-8");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'recipt.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
<script type="text/javascript">
    function check()
    {
  // 必须先获取对象才能再获取其值
//var m=document.getElementById("mail").value（X）
    
        //标题名验证
        var n=document.getElementById("title");
        n= n.value;
        if(n.length==0)
        {
            alert("标题名不能为空！");
            return false;
        }
  
         //内容验证
         var p=document.getElementById("context");
         p= p.value;
         if(p.length==0)
        {
            alert("内容不能为空！");
            return false;
        }
    }
</script>
	
	
	
	
<style type="text/css">
* {
	margin: 0px auto;
	padding: 0px;
}

body {
	text-align: center;
}

#receipt {
	width: 920px;
	text-align: left;
	font-size: 18px;
	height: 300px;
	padding:20px;
	background:url(img/7.jpg);
	background-size:100%;
	color:#ffffff;
}
#receipt p{
    padding-bottom:10px;
}
</style>

	</head>

	<body>
		<div id="receipt">
			<form action="receiptHandle" onsubmit="return check();" method="post">
				<p>
					标题：
					<input name="title" id="title">
				</p>
				<p>
					<span>内容：</span>
					<textarea rows="15" cols="80" name="context" id="context"></textarea>
				</p>
				<p>
					<input type="submit" name="submit" value="发 帖" />
					<input type="reset" name="reset" value="清 空" />
				</p>
			</form>
		</div>
	</body>
</html>
