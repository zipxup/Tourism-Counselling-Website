<%@page import="com.vo.Announcement"%>
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
<title>公告</title>
<link href="<%=basePath%>css/announcement.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/announcement.js"></script>
<style type="text/css">
body {
 background-image: url(image/bg.jpg);
}
</style>
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
	<div id="center" class="bb" style="width: 734px; ">
		<a href="<%=basePath%>servlet/IndexServlet"><font size=3>首 页</a>>>功能帮助>> 公告            <a href="#" onclick="b2()">发布公告</a>   <a href="#" onclick="b1()">公告信息</a>
	</font></div>
	
	<div id="div1" style="width: 97px; ">
		<br>
	</div>
	<div id="div2">
		<%
			List list = (List) request.getAttribute("announcement");
			for (int i = 0; i < list.size(); i++) {
				Announcement announcement = (Announcement) list.get(i);
		%>
		<%=i + 1%>.<a href="#" onclick="a1();"><%=announcement.getTitle()%></a><br>
		<div id="id" style="display: ;">
			<table>
				<tr>
					<td id="td1"><%=announcement.getName()%></td>
					<td id="td2"><%=announcement.getTime()%></td>
				</tr>
				<tr>
					<td colspan="3"><span style="color: red;"><%=announcement.getTitle()%></span>
					</td>
				</tr>
				<tr>
					<td colspan="3"><%=announcement.getContent()%></td>
				</tr>
			</table>
		</div>
		<%
			}
		%>
	</div>
	<div id="div3" style="display: none;">
		<a href="#" onclick="b1()"></a>	 
	</div>
	<br>
	<div id="div4" class="bb" style="display: none;">
	<form action="<%=basePath%>servlet/Aannouncement1Servlet" method="post" name="f">
		<input type="hidden" value="<%=session.getAttribute("name")%>" name="name">
		标题:<input type="text" name="title"><br/><br/>
		正文:<textarea rows="5" cols="30" name="content"></textarea><br>
		<br> 
		   <input class="bb" type="submit" value="提交" onclick="return c1(f);">
		<input class="bb" type="reset" value="重置"onclick="c2()">
	</form>
	</div>
	<br>
	<div>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>