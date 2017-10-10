<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<META HTTP-EQUIV=REFRESH CONTENT="4;URL=<%=basePath%>index.jsp">
<br>
<br>
<center>
	退出成功,将在<span id=yu>5</span><a href=javascript:countDown></a>秒后自动返回<a
		href="<%=basePath%>index.jsp">主界面</a>!!!
</center>
<script>
	function countDown(secs) {
		yu.innerText = secs;
		if (--secs > 0) {
			setTimeout("countDown(" + secs + ")", 1000);
		}
	}
	countDown(5);
</script>


<title>注销</title>
</head>
<body>
	<%
		session.invalidate();
	%>
</body>
</html>