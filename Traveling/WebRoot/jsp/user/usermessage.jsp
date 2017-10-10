<%@page import="com.vo.UserManager"%>
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
<title>用户信息</title>
<link href="<%=basePath%>css/usermessage.css" rel="stylesheet" type="text/css" />
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
	<div id="link" class="bb">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>用户信息
	</div>
	<%List list=(List)request.getAttribute("List");
		UserManager userManager=(UserManager)list.get(0);
		%>
	<div id="center" class="bb">
		<table>
			<tr>
				<td rowspan="6" class="td1" id="img">
					<img src="<%=basePath%><%=userManager.getImage() %>">
				</td>
			</tr>
			<tr>
				<td class="td2">
					账户:<%=userManager.getAccount() %>
				</td>
				<td class="td2">
					电话:<%=userManager.getPhoneNumber() %>
				</td>
			</tr>
			<tr>
				<td class="td2" colspan="2">
					姓名:<%=userManager.getName() %>
				</td>
			</tr>
			<tr>
				<td class="td2" colspan="2">
					性别:<%=userManager.getSex() %>
				</td>
			</tr>
			<tr>
				<td class="td2" colspan="2">
					生日:<%=userManager.getBirthday() %>
				</td>
			</tr>
			<tr>
				<td class="td2" colspan="2">
					邮箱：<%=userManager.getEmail() %>
				</td>
			</tr>
		</table>
	</div>
	<div>
		<br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>