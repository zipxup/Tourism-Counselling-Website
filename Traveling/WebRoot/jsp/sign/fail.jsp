<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<META HTTP-EQUIV=REFRESH CONTENT="4;URL=<%=basePath%>jsp/login.jsp">
<br>
<br>
<center>
	用户名或密码错误，请重新输入，将在<span id=yu>5</span><a href=javascript:countDown></a>秒后自动返回<a
		href="<%=basePath%>jsp/login.jsp">登陆页面</a>!
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


<title>登录失败</title>
</head>
<body>
	<%
		session.invalidate();
	%>
</body>
</html>