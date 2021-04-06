<%@ page language="java" import="java.util.*,Receipt.*" pageEncoding="utf-8"%>
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

		<title>My JSP 'shhowMessage.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
* {
	margin: 0px auto;
	padding: 0px;
}

body {
	text-align: center;
}
#all{
     width: 960px;
     height:340px;
	 font-size:18px;
	 background:url(img/7.jpg);
	background-size:100%;
	color:#ffffff;
	 }
#title {
      width: 960px;
      height:20px;	
      padding:5px 0px;
      border-bottom:1px  dashed #ffffff;
}
#context {
	  width: 960px;
      height:220px;
}
#receipt {
	  width: 960px;
      height:40px;
      position:relative;
      border-bottom:1px  dashed #000;
      padding-top:5px;
}
#author {
	   width: 200px;
       height:40px;
       position:absolute;
       left:0px;	   
}
#neirong {
       width: 300px;
       height:40px;
       position:absolute;
       left:300px;	
	
} 
#newReceipt {
	    width: 640px;
	    color: #000;
	    font-size: 18px;
	    height: 80px;
}
</style>

		<script type="text/javascript">
    function check()
    {
  // 必须先获取对象才能再获取其值
//var m=document.getElementById("mail").value（X）
    
         //内容验证
         var p=document.getElementById("newReceipt");
         p= p.value;
         if(p.length==0)
        {
            alert("内容不能为空！");
            return false;
        }
    }
</script>
	</head>

	<body>
	<div id="all">
		<div id="context">
			<%
			     String title1= (String)session.getAttribute("title");
				if(title1==null){
					String title = new String(request.getParameter("title").getBytes("iso-8859-1"), "utf-8");
					session.setAttribute("titleName", title);//获得帖子名
					
					ArrayList receipt = (ArrayList) session.getAttribute("receipt");
					for (int i = receipt.size() - 1; i >= 0; i--) {
						receipts r = (receipts) receipt.get(i);
						if (r.getTitle().equals(title)) {
			%>
			<div id="title">帖名：<%=r.getTitle()%></div>
			<div id="receipt">
				<div id="author">留言者：<%=r.getUserName()%></div>
				<div id="neirong">留言内容：<%=r.getContext()%></div>
			</div>
			<%
				}}
				}else{
				      ArrayList NewReceipt = (ArrayList) session.getAttribute("'"+title1+"'");
					  String title=title1;//获得帖子名
					   System.out.print(title1);
					    System.out.print(NewReceipt);
					
					ArrayList receipt = (ArrayList) session.getAttribute("receipt");
					for (int i = receipt.size() - 1; i >= 0; i--) {
						receipts r = (receipts) receipt.get(i);
						if (r.getTitle().equals(title)) {
							
			%>
			<div id="title">帖名：<%=r.getTitle()%></div>
			<div id="receipt">
				<div id="author">留言者：<%=r.getUserName()%></div>
				<div id="neirong">留言内容：<%=r.getContext()%></div>
			</div>
			<%
				}
					}
					for (int k = NewReceipt.size() - 1; k >= 0; k--) {
						newRe nr = (newRe) NewReceipt.get(k);
			%>
			<div id="receipt">
				<div id="author">留言者：<%=nr.getUserName()%></div>
				<div id="neirong2">留言内容：<%=nr.getNewReceipt()%></div>
			</div>
			<%
				}
				}
			%>
		</div>
			<div id="newReceipt">
				<form action="newReceipt" onsubmit="return check();" method="post">

					<p>
						<textarea name="newReceipt" id="newReceipt"></textarea>
					</p>
					<p>
						<input type="submit" name="submit" value="回 帖" />
						<input type="reset" name="reset" value="清 空" />
					</p>
				</form>
			</div>
		</div>
	</body>
</html>
