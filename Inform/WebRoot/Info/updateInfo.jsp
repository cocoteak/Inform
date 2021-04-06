<%@ page language="java" import="java.util.*,java.sql.*,User.*" pageEncoding="utf-8"%>
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
    
    <title>updateInfo page</title>
    
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
	background:url(img/2.jpg);
	background-size:100%;
	color:#ffffff;
}
#context {
	width: 482px;
	font-size:20px;
	height:400px;
}
</style>
  </head>
	<script type="text/javascript">
    function check()
    {
  // 必须先获取对象才能再获取其值
//var m=document.getElementById("mail").value（X）
    
        //用户名验证
        var n=document.getElementById("name");
        n = n.value;
        if(n.length<2||n.length>10)
        {
            alert("用户名长度必须在2到10位之间！");
            return false;
        }
  
          //爱好验证
 var habit=document.getElementsByName("upHabit"); 
  var flage=false;
 for (var i=0;i<habit.length;i++){
 if(habit[i].checked){ //判断复选框是否选中
     flage=true; 
 }
 }
 if(flage==false){
            alert("请选择爱好！");
            return false;
       }
 
        //邮箱验证
        var m=document.getElementById("mail");
        m=m.value;
        if(m.indexOf("@") < 0 )
        {
            alert("邮箱中没有包含@字符！");
            return false;
        }
        
        //手机验证
        var t= document.getElementById("telephone");
        t=t.value;
        if(t.length!=11)
        {
            alert("手机号必须为11位！");
            return false;
        }
    }
</script>
	<body>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/information";
			Connection con = DriverManager.getConnection(url, "root", "1234");
			Statement st = con.createStatement();

			
			String name =(String) session.getAttribute("oldName");//旧名字
			String sql = "select * from info where name='" + name + "'";
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
		%>

		<div>
			<form action="updateCheck" onsubmit="return check();" method="post">
				<h2>
					个人信息表
				</h2>
				<table border="1" width="210">
					<tr>
						<td>
							用户名：&nbsp;
						</td>
						<td>
							<input type="text" name="upName" id="name" value="<%=rs.getString(1)%>">
						</td>
					</tr>
					<tr>
						<td>
							性&nbsp;&nbsp;&nbsp;别：&nbsp;
						</td>
						<td>
							<%
								if (rs.getString(3).equals("男")) {
							%>
							<input type="radio" name="upGender" id="gender" value="男" checked>
							男&nbsp;&nbsp;
							<%
								} else {
							%>
							<input type="radio" name="upGender" id="gender" value="男">
							男&nbsp;&nbsp;
							<%
								}
							%>
							<%
								if (rs.getString(3).equals("女")) {
							%>
							<input type="radio" name="upGender"  value="女" checked>
							女&nbsp;&nbsp;
							<%
								} else {
							%>
							<input type="radio" name="upGender"  value="女">
							女&nbsp;&nbsp;
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>
							出生年月：
						</td>
						<td>
							<select name="upYear" id="year">
								<%
									if (rs.getString(4).equals("1992")) {
								%>
								<option value="1992" selected>
									1992
								</option>
								<%
									} else {
								%>
								<option value="1992">
									1992
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("1993")) {
								%>
								<option value="1993" selected>
									1993
								</option>
								<%
									} else {
								%>
								<option value="1993">
									1993
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("1994")) {
								%>
								<option value="1994" selected>
									1994
								</option>
								<%
									} else {
								%>
								<option value="1994">
									1994
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("1995")) {
								%>
								<option value="1995" selected>
									1995
								</option>
								<%
									} else {
								%>
								<option value="1995">
									1995
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("1996")) {
								%>
								<option value="1996" selected>
									1996
								</option>
								<%
									} else {
								%>
								<option value="1996">
									1996
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("1997")) {
								%>
								<option value="1997" selected>
									1997
								</option>
								<%
									} else {
								%>
								<option value="1996">
									1997
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("1998")) {
								%>
								<option value="1998" selected>
									1998
								</option>
								<%
									} else {
								%>
								<option value="1998">
									1998
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("1999")) {
								%>
								<option value="1999" selected>
									1999
								</option>
								<%
									} else {
								%>
								<option value="1999">
									1999
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("2000")) {
								%>
								<option value="2000" selected>
									2000
								</option>
								<%
									} else {
								%>
								<option value="2000">
									2000
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(4).equals("2001")) {
								%>
								<option value="2001" selected>
									2001
								</option>
								<%
									} else {
								%>
								<option value="2001">
									2001
								</option>
								<%
									}
								%>
							</select>
							&nbsp;—&nbsp;
							<select name="upMonth" id="month">
								<%
									if (rs.getString(5).equals("01")) {
								%>
								<option value="01" selected>
									01
								</option>
								<%
									} else {
								%>
								<option value="01">
									01
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("02")) {
								%>
								<option value="02" selected>
									02
								</option>
								<%
									} else {
								%>
								<option value="02">
									02
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("03")) {
								%>
								<option value="03" selected>
									03
								</option>
								<%
									} else {
								%>
								<option value="03">
									03
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("04")) {
								%>
								<option value="04" selected>
									04
								</option>
								<%
									} else {
								%>
								<option value="04">
									04
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("05")) {
								%>
								<option value="05" selected>
									05
								</option>
								<%
									} else {
								%>
								<option value="05">
									05
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("06")) {
								%>
								<option value="06" selected>
									06
								</option>
								<%
									} else {
								%>
								<option value="06">
									06
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("07")) {
								%>
								<option value="07" selected>
									07
								</option>
								<%
									} else {
								%>
								<option value="07">
									07
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("08")) {
								%>
								<option value="08" selected>
									08
								</option>
								<%
									} else {
								%>
								<option value="08">
									08
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("09")) {
								%>
								<option value="09" selected>
									09
								</option>
								<%
									} else {
								%>
								<option value="09">
									09
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("10")) {
								%>
								<option value="10" selected>
									10
								</option>
								<%
									} else {
								%>
								<option value="10">
									10
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("11")) {
								%>
								<option value="11" selected>
									11
								</option>
								<%
									} else {
								%>
								<option value="11">
									11
								</option>
								<%
									}
								%>
								<%
									if (rs.getString(5).equals("12")) {
								%>
								<option value="12" selected>
									12
								</option>
								<%
									} else {
								%>
								<option value="12">
									12
								</option>
								<%
									}
								%>
							</select>
						</td>
					</tr>

					<tr>
						<td>
							手&nbsp;&nbsp;&nbsp;机：&nbsp;
						</td>
						<td>
							<input type="text" name="upTel" id="telephone"  value="<%=rs.getString(6)%>">
						</td>
					</tr>
					<tr>
						<td>
							邮&nbsp;&nbsp;&nbsp;箱：&nbsp;
						</td>
						<td>
							<input type="text" name="upEmail"  id="mail" value="<%=rs.getString(7)%>">
						</td>
					</tr>
					<tr>
						<td>
							爱&nbsp;&nbsp;&nbsp;好：&nbsp;
						</td>
						<td>
							<%
								if (rs.getString(8).contains("游泳")) {
							%>
							<input type="checkbox" name="upHabit" value="游泳" checked>
							游泳<%
								} else {
							%>
							<input type="checkbox" name="upHabit" value="游泳">
							游泳
							<%
								}
							%>
							<%
								if (rs.getString(8).contains("跑步")) {
							%>
							<input type="checkbox" name="upHhabit" value="跑步" checked>
							跑步<%
								} else {
							%>
							<input type="checkbox" name="upHabit" value="跑步">
							跑步<%
								}
							%>
							<%
								if (rs.getString(8).contains("唱歌")) {
							%>
							<input type="checkbox" name="upHabit" value="唱歌" checked>
							唱歌<%
								} else {
							%>
							<input type="checkbox" name="upHabit" value="唱歌">
							唱歌
							<%
								}
							%>
							<%
								if (rs.getString(8).contains("跳舞")) {
							%>
							<input type="checkbox" name="upHabit" value="跳舞" checked>
							跳舞<%
								} else {
							%>
							<input type="checkbox" name="upHabit" value="跳舞">
							跳舞<%
								}
							%>
							<%
								if (rs.getString(8).contains("画画")) {
							%>
							<input type="checkbox" name="upHabit" value="画画" checked>
							画画<%
								} else {
							%>
							<input type="checkbox" name="upHabit" value="画画">
							画画
							<%
								}
							%>
							<%
								if (rs.getString(8).contains("其他")) {
							%>
							<input type="checkbox" name="upHabit" value="其他" checked>
							其他<%
								} else {
							%>
							<input type="checkbox" name="upHabit" value="其他">
							其他<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>
							简&nbsp;&nbsp;&nbsp;介：&nbsp;
						</td>
						<td>
							<textarea rows="10" cols="25" name="upIntroduce"><%=rs.getString(9)%></textarea>
						</td>
					</tr>
					<tr align="center">
						<td colspan="2">
							<input name="sure" type="submit" value="修改" />
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input name="clear" type="reset" value="取消" />
						</td>
					</tr>
				</table>
			</form>
		<%
			}
		%>
		</div>
	</body>
</html>
