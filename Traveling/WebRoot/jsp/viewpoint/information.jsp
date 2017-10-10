<%@page import="com.vo.Leave"%>
<%@page import="com.vo.SpotsManager"%>
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
<title>景点详情</title>
<link href="<%=basePath%>css/information.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/information.js"></script>
</head>
<body>
	<div>
		<jsp:include page="../common/top.jsp"></jsp:include>
		<br>
	</div>
		<%List list=(List)request.getAttribute("List");
			SpotsManager spotsManager=(SpotsManager)list.get(0);
			%>
	<div id="link">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>
		<a href="<%=basePath%>servlet/ViewpointServlet?value=0"">景点信息</a>>>
		景点详情
	</div>
<div id="bao" style="display: none;">
		<table>
			<tr>
				<td class="td2">
					确定要报名吗?
				</td>
				<td class="td2">
					<a href="<%=basePath%>servlet/EmailServlet?account=<%=(String)session.getAttribute("account")%>&spots_Id=<%=spotsManager.getSpots_Id()%>" target="_link" onclick="a2();">确定</a>/<a href="#" onclick="a2();">取消</a>
				</td>
			</tr>
		</table>
</div>
	<div id="center">
		<table class="table">
			<tr>
				<td class="td1" rowspan="7">
				<a href="<%=basePath%>servlet/ImageServlet?spots_Id=<%=spotsManager.getSpots_Id()%>">
					<img src="<%=basePath%><%=spotsManager.getImage() %>" alt="未查询到相关信息" style="border: 0px" title="点击查看更多图片信息">
				</a></td>
				<td colspan="2" class="td3"><a href="#" onclick="a1();">我要报名</a></td>
			</tr>
			<tr>
				<td class="td2"><b>名 称:</b><%=spotsManager.getSpots_name() %></td>
				<td class="td2"><b>编号:</b><%=spotsManager.getSpots_Id() %>(<%int p=Integer.parseInt(spotsManager.getXingji());
																			switch(p){
																			case 1:out.print("★");break;
																			case 2:out.print("★★");break;
																			case 3:out.print("★★★");break;
																			case 4:out.print("★★★★");break;
																			case 5:out.print("★★★★★");break;
							} %>)</td>
			</tr>
			<tr>
			<td class="td2">
			<b>报名人数：</b>(<%=spotsManager.getNumber() %>/<%=spotsManager.getNumbermax() %>)</td>
			</tr>
			<tr>
				<td class="td2"><b>申报价格:</b><span style="color: red"><%=spotsManager.getMoney() %></span>(<%=spotsManager.getType() %>天)</td>
				<td class="td2"><b>发布部门:</b><%=spotsManager.getCompany() %></td>
			</tr>
			<tr>
				<td class="td2" colspan="2"><b>发布时间:</b><%=spotsManager.getTime() %></td>
			</tr>
			<tr>
				<td class="td2" colspan="2"><b>出发时间:</b><%=spotsManager.getDatatime() %></td>
			</tr>
			<tr>
				<td class="td2"><b>向 导:</b><a href="<%=basePath%>servlet/Guide?id=<%=spotsManager.getGuideID() %>"><%=spotsManager.getDaoyou() %></a></td>
			</tr>
			<tr>
				<td colspan="2" class="td2"><b>景点宣传:</b><%=spotsManager.getScenery() %>
				</td>
			</tr>
			<tr>
				<td class="td2"><b>大概行程</b>
					<div>
						<br><%=spotsManager.getTrip() %>
					</div>
				</td>
				<td colspan="2" class="td2"><b>详细介绍</b>
					<div>
						<br><%=spotsManager.getIntroduction_x() %>
					</div>
				</td>
			</tr>
			<tr>
				<td class="td2"><b>注意事项</b>
					<div>
						<br><%=spotsManager.getV3() %>
					</div>
				</td>
				<td colspan="2" class="td2"><b>补充说明</b>
					<div>
						<br><%=spotsManager.getV4() %>
					</div>
				</td>
			</tr>
			<tr>
				<td style="text-align: right;padding-right: 15%" colspan="3" class="td2"><br>
					<a href="<%=basePath%>servlet/LeaveListServlet?spots_Id=<%=spotsManager.getSpots_Id() %>&number=0"> 留 言 内 容 </a></td>
			</tr>
		</table>
		</div>
	<div>
		<br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>