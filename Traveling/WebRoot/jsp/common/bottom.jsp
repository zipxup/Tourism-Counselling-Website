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
<title>底部信息</title>
<link href="<%=basePath%>css/bottom.css" rel="stylesheet"
	type="text/css" />
	<style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
<body class="bb">
	Copyright2014 All Right Reserved
		巴蜀行·版权所有丨Group 8
		<span class="aw"></span>
	
</body>
</html>