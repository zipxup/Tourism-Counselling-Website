<%@page import="com.vo.Guide"%>
<%@page import="java.util.List"%>
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
<title>导游信息</title>
<link href="<%=basePath%>css/guide.css" rel="stylesheet" type="text/css" />
<style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
<body>
	<div>
		<jsp:include page="../common/top.jsp"></jsp:include>
		<br>
	</div>
	<div style="font-size: 13px" class="bb">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>><a href="<%=basePath%>servlet/GuideServlet">导游资料</a>>>资料详情 <br>
	</div>
	<div class="top" id="top">
			<%
				List list=(List)request.getAttribute("guide");
					Guide guide=(Guide)list.get(0);
			%>
				<hr>
		<table class="bb">
			<tr>
				<td rowspan="3">&nbsp;&nbsp;&nbsp;&nbsp;姓名:<b style="color: red"><%=guide.getName() %></b><br><br><img src="<%=basePath%><%=guide.getImage()%>"></td>
				<td style="padding-left: 100px">编号:<%=guide.getId() %></td>
				<td style="padding-left: 100px">QQ:<%=guide.getQQ() %><hr></td>
			</tr>
			<tr>
				<td style="padding-left: 100px">性别:<%=guide.getSex() %></td>
				<td style="padding-left: 90px">联系电话:<%=guide.getTel() %></td>
			</tr>
			<tr>
				<td colspan="2" style="padding-left: 100px">电子邮件:<%=guide.getEmail() %></td>
			</tr>
			<tr>
				<td style="font-size: 25px;padding-left: 50px">他/她的简介 <br/><hr></td>
				<td colspan="2" class ="bb">&nbsp;&nbsp;&nbsp;
				<%=guide.getJianjie() %></td>
			</tr>
		</table>
	</div>
	<div>
		<br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>