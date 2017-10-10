<%@ page language="java" pageEncoding="GBK"
	import="com.jspsmart.upload.*"%>
<jsp:useBean id="mySmartUpload" scope="page"
	class="com.jspsmart.upload.SmartUpload"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ÏÂÔØÎÄ¼þ</title>
</head>
<body>
	<div>
		<%
			String id = request.getParameter("id");
			mySmartUpload.initialize(pageContext);
			mySmartUpload.setContentDisposition(null);
			mySmartUpload.downloadFile(id);
			out.clear();
			out = pageContext.pushBody();
		%>
	</div>
</body>
</html>