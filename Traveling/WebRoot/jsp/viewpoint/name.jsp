<%@page import="com.factory.NameFactory"%>
<%@page import="com.dao.INameDAO"%>
<%@page import="com.vo.Name"%>
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
<title>报名人数</title>
<link rel="stylesheet" href="<%=basePath%>css/name.css" type="text/css" media="all">
<script type="text/javascript" src="<%=basePath%>js/viewpoint.js"></script>
</head>
<body>
	<div>
		<jsp:include page="../common/top.jsp"></jsp:include>
		<br>
	</div>
	<%
		List list=(List)request.getAttribute("Name");
		Name name=(Name)list.get(0);
	%>
	<div id="link">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>
		<a href="<%=basePath%>servlet/ViewpointServlet?value=0">景点信息</a>>>
		<a href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=name.getSpots_Id()%>">景点详情</a>>>
		报名人数
	</div>
	<div id="center">
		<table>
			<tr>
				<td class="td">编号</td>
				<td class="td">景点名称</td>
				<td class="td">已报名ID</td>
			</tr>
		<%for(int i=0;i<list.size();i++){
			Name name1=(Name)list.get(i);%>
			<tr>
				<td class="td"><%=i+1 %></td>
				<td class="td"><%=name1.getSpots_name() %></td>
				<td class="td"><%=name1.getName() %></td>
			</tr>
		<%	} %>
		</table>
	</div>
	<div>
		<br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>