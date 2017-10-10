<%@page import="com.vo.Guide"%>
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
<title>导游信息</title>
<link href="<%=basePath%>css/informaction.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/guideinformation.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$(".pane .delete").click(function() {
			$(this).parents(".pane").animate({
				opacity : 'hide'
			}, "slow");
		});

	});
</script>
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
	<div id="center1" class="bb">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>导游资料
	</div>
	<div class="box" id="box">
		<%
			List list=(List)request.getAttribute("select");
			for(int i=0;i<list.size();i++){
				Guide guide=(Guide)list.get(i);
		%>
		
		<div class="pane" class="bb">
			<h3>姓名:<%=guide.getName() %></h3>
			<table>
				<tr>
					<td rowspan="3">
					<a href="<%=basePath%>servlet/Guide?id=<%=guide.getId()%>"><img alt="" src="<%=basePath%><%=guide.getImage() %>"></a></td>
				</tr>
				<tr>
					<td style="padding-left: 80px;padding-right: 80px;font-size: 15px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=guide.getJianjie() %></td>
				</tr>
				<tr>
					<td style="text-align: right;">
					<img alt="" src="<%=basePath%>image/QQ.png" style="height: 20px">
					<a href="http://wpa.qq.com/msgrd?v=3&uin=<%=guide.getQQ() %>&site=qq&menu=yes" target="_blank">联系他/她</a></td>
				</tr>
			</table>
			<img src="<%=basePath%>image/btn-delete.gif" alt="delete"
				class="delete" />
			<br><br>
		</div>
				<%} %>
	</div>
	<div>
		<br><br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>