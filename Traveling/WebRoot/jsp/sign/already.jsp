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
<center class="bb">
	你已经报名，无需重复报名，将在<span id=yu>5</span><a href=javascript:countDown></a>秒后自动返回<a
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


<title>已经报名</title>
<style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
<body>
	<%
		session.invalidate();
	%>
</body>
</html>