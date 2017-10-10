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
<title>上传文件</title>
<link href="<%=basePath%>css/database.css" rel="stylesheet"
	type="text/css" />
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
	</div>
	<div class="bb">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>功能帮助>><a href="<%=basePath%>servlet/DatabaseServlet">资料库</a>>>上传文件
	</div>
	<div id="center">
	<br>
		<FORM METHOD="POST" ACTION="FileUpload.jsp" ENCTYPE="multipart/form-data">
			<INPUT TYPE="FILE" NAME="FILE" SIZE="50"><BR>
			<INPUT TYPE="SUBMIT" VALUE="Upload">
			<INPUT TYPE="RESET" VALUE="Cancel">
		</FORM>
	</div>
	<div>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>