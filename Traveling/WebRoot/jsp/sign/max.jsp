<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<META HTTP-EQUIV=REFRESH CONTENT="4;URL=<%=basePath%>servlet/IndexServlet">
<br>
<br>
<center>
	报名已达最大值，请选择其他报名，将在<span id=yu>5</span><a href=javascript:countDown></a>秒后自动返回<a
		href="<%=basePath%>servlet/IndexServlet">景点页面</a>!
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


<title>报名失败</title>
</head>
<body>
	<%
		session.invalidate();
	%>
</body>
</html>