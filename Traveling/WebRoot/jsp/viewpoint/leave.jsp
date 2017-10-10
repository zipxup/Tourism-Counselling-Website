<%@page import="com.vo.Leave"%>
<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@page import="com.factory.LeaveFactory"%>
<%@page import="com.dao.ILeaveDAO"%>
<%@page import="com.vo.SpotsManager"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>留言</title>
<link href="<%=basePath%>css/leave.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/leave.js"></script>
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
		<%String spots_Id=(String)request.getAttribute("spots_Id"); %>
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>> <a
			href="<%=basePath%>servlet/ViewpointServlet?value=0"">景点信息</a>>> <a
			href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=spots_Id%>">景点详情</a>>> 留言内容
	</div>
	<div id="center" class="bb">
		<br>
		<a href="#" onclick="a2()">我要留言</a>
		<table style="width: 100%">
			<%List list=(List)request.getAttribute("value");
				%>
			<%for(int i=0;i<list.size();i++){
				Leave leave=(Leave)list.get(i);
				%>
		
			<tr>
				<td>1</td>
				<td>留言人:<%=leave.getName() %>
				</td>
				<td>留言时间:<%=leave.getTime() %>
				</td>
			</tr>
			<tr>
				<td colspan="2" style="padding-left: 50px"><br>
					<div style="border-bottom: 1px #ebe8e1 solid;">
					<b><%=leave.getContent() %></b>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="2"><hr /></td>
			</tr>
		
			<% } %>
			<tr>
				<td colspan="3" style="text-align: center;">
				<%ILeaveDAO iLeaveDAO=LeaveFactory.getleLeaveDAO();
						int value=iLeaveDAO.number(Integer.parseInt(spots_Id));
						%>
				<%String link=(String)request.getAttribute("number");
						int i=Integer.parseInt(link);
						%>
				当前<%=(i/5)*5+1 %>～<%=i+5 %>条,总  <%=value %>
					条记录
					<a href="<%=basePath%>servlet/LeaveListServlet?spots_Id=<%=spots_Id %>&number=0"> 首 页 </a> 
					<a href="<%=basePath%>servlet/LeaveListServlet?spots_Id=<%=spots_Id %>&number=<%=i-5%>">上一页</a> 
					<a href="<%=basePath%>servlet/LeaveListServlet?spots_Id=<%=spots_Id %>&number=<%=i+5%>">下一页</a> 
					<a href="<%=basePath%>servlet/LeaveListServlet?spots_Id=<%=spots_Id %>&number=<%=(value/5)+4%>"> 末 页 </a>
				</td>
			</tr>
		</table>
	</div>
	<div id="liuyan"  class="bb" style="display: none;">
		<br>
		<a href="#" onclick="a1()">留言内容</a><br>
		请输入留言内容!<br><br>
	<form action="<%=basePath%>servlet/LeaveInsertServlet?spots_Id=<%=spots_Id %>" method="post">
		<textarea rows="10" cols="50" name="text"></textarea>
		<input class="bb"  type="submit" value="提交">
		<input class="bb" type="reset" value="重置">
	</form>
	</div>
	<div>
		<br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>