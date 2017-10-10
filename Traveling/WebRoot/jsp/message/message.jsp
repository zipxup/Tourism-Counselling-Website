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
<title>留言板</title>
<link href="<%=basePath%>css/message.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>js/message.js" type="text/javascript"></script>
<style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
</head>
<body>
	<div>
		<jsp:include page="../common/top.jsp"></jsp:include>
		<br>
	</div>
	<div id="link" class="bb">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>功能帮助>>巴蜀行·留言板
	</div>
	<div id="center" class="bb">
		<h2>巴蜀行内部网络!</h2>
		<%String value=(String)request.getAttribute("value");
			if(value!=null){%>
				<span style="color: red;"><%=value %></span>
		<%}	%>
		<br>
		把您认为需要改进的地方告诉我们,我们将努力改进!<br><hr style="width: 370px;text-align: left;">
		请在下面填写内容!<br><br>
		<b>遇见的问题?</b><br>
	<form action="<%=basePath%>servlet/MessageServlet" method="post" name="f">
		<textarea rows="2" cols="60" name="title"></textarea><br>
		<input type="hidden" name="time" value="<%=new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new java.util.Date())%>">
		<b>详细描述!!!</b><br>
		<textarea rows="10" cols="60" name="content"></textarea><br>
		<img alt="换一张！" id="image" src="<%=basePath%>jsp/common/image.jsp" width="60" height="20" border="1" onclick="javascript:loadimage();">
		
		<input type="text" style="width: 50px" name="n11">
		<input type="hidden" value="<%=(String)session.getAttribute("verification")%>" name="n22">
		
		<input class="bb" type="submit" value=" 提 交 " onclick="return a1(f)">
		<input class="bb" type="reset" value=" 重 置 " onclick="a2()">
	</form>
	</div>
	<div><br><br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>