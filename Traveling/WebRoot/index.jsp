<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>首页</title>
<link href="<%=basePath%>css/index.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
 background-image: url(image/bg.jpg);
}
</style>
<style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
<body>
	<div>
		<jsp:include page="jsp/common/top.jsp"></jsp:include>
		<br><br>
	</div>
	<div id="center" class="bb">
		<div id="center_one"><a href="<%=basePath%>servlet/IndexServlet"><img src="<%=basePath%>image/templatemo_content_home.png" style="border: 0px white solid; "></a></div>
		<div id="center_tow" style="width: 300px; text-align:center;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;少不入蜀？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;蜀道难？<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;巴蜀行！<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;一切皆有可能！</div>
	</div>
	<div id="bottom">
	<br>
		<div id="bottom_one" class="bb">
			巴蜀行·
			<a href="">about 巴蜀行</a>·
			<a href="">巴蜀行 隐私权政策</a>·
			<a href="">帮助</a>
		</div>
		<div id="bottom_tow" class="bb">
			<a onclick="this.style.behavior='url(#default#homepage)';this.setHomePage('http://localhost:8080/Traveling/index.jsp');" href="javascript:void(0);">设置首页</a>
			<a href="#" onclick="javascript:window.external.AddFavorite('http://localhost:8080/Traveling/index.jsp','巴蜀行')" title="收藏本站到你的收藏夹">收藏本站</a>
		</div>
	</div>
</body>
</html>