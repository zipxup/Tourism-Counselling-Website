<%@page import="com.vo.Database"%>
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
<title>资料库</title>
<link href="<%=basePath%>css/database.css" rel="stylesheet"
	type="text/css" />
<style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
<body>
	<div>
		<jsp:include page="../common/top.jsp"></jsp:include>
	</div>
	<div class="bb">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>功能帮助>>资料库
	</div>
	<br>
	<div id="div" class="bb">
		<a href="<%=basePath%>jsp/database/sample.jsp">上传文件</a>
	</div>
	<div id="center" class="bb">
		<%
			List list = (List) request.getAttribute("database");
			for (int i = 0; i < list.size(); i++) {
				Database database = (Database) list.get(i);
		%>
		<table>
			<tr>
				<td style="width: 50px"><%=i+1 %>.</td>
				<td style="width: 150px"><a href="<%=basePath%>jsp/database/xiazai.jsp?id=<%=database.getInformaction()%>"><%=database.getName()%></a>
				</td>
				<td style="width: 150px"><%=database.getPop()%></td>
				<td style="width: 150px"><%=database.getTime()%></td>
			</tr>
		</table>
		<%
			}
		%>
	</div>
	<br>
	<div>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>