<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	String ip=request.getRemoteAddr();
	System.out.println(ip);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登陆</title>
<link href="<%=basePath%>css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/login.js"></script>
<style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
<body>
	<div>
		<jsp:include page="common/top.jsp"></jsp:include>
	</div>
	<div id="login" class="bb">
		<br>
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>登 陆
	</div>
	<div id="center" class="bb">
		<br>
		<form action="<%=basePath%>servlet/LoginServlet" method="post" name="f">
		账	号:<input type="text" name="account"><br><br>
		密	码:<input type="password" name="password"><br><br>
				<input type="checkbox" name="cookie" onclick="a3()">记住密码状态<br><br>
				<input  class="bb" type="submit" value="登录" onclick="return a1(f)">
				<input class="bb" type="reset" value="重置" onclick="return a2()">
		</form>
		<!--  如果您是新用户，<a href="<%=basePath%>jsp/register.jsp">请注册</a>-->
	</div>
	<div>
		<br><br>
		<jsp:include page="common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>