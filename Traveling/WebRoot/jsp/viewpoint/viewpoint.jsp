<%@page import="com.factory.NumberFactory"%>
<%@page import="com.dao.INumberDAO"%>
<%@page import="com.vo.SpotsManager"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>景点信息</title>
<link href="<%=basePath%>css/viewpoint.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/viewpoint.js"></script>
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
		<a href="<%=basePath%>servlet/IndexServlet">首页</a>>>景点信息 <br>
	</div>
	<div id="center2">
		<br>
		<%
			java.util.List<?> list1 = (java.util.List<?>) request
					.getAttribute("Viewpoint");
			SpotsManager oup1 = (SpotsManager) list1.get(0);
			SpotsManager oup2 = (SpotsManager) list1.get(1);
			SpotsManager oup3 = (SpotsManager) list1.get(2);
			SpotsManager oup4 = (SpotsManager) list1.get(3);
		%>
		<table class="bb">
			<tr>
				<td class="td1">ID:<%=oup1.getSpots_Id()%>&nbsp;&nbsp;&nbsp;&nbsp;编号:<%=oup1.getSpots_Id()%></td>
				<td class="td1">ID:<%=oup2.getSpots_Id()%>&nbsp;&nbsp;&nbsp;&nbsp;编号:<%=oup2.getSpots_Id()%></td>
			</tr>
			<tr>
				<td><a href="<%=basePath%>servlet/ImageServlet?spots_Id=<%=oup1.getSpots_Id()%>"><img src="<%=basePath%><%=oup1.getImage()%>"></a></td>
				<td><a href="<%=basePath%>servlet/ImageServlet?spots_Id=<%=oup2.getSpots_Id()%>"><img src="<%=basePath%><%=oup2.getImage()%>"></a></td>
			</tr>
			<tr>
				<td><span class="td2"><a href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup1.getSpots_Id()%>"><%=oup1.getSpots_name()%></a></span></td>
				<td><span class="td2"><a href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup2.getSpots_Id()%>"><%=oup2.getSpots_name()%></a></span></td>
			</tr>
			<tr>
				<td class="td3"><span style="color: red">Price</span>:<%=oup1.getMoney()%>&nbsp;||&nbsp;&nbsp;&nbsp;<a
					href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup1.getSpots_Id()%>">More</a>...</td>
				<td class="td3"><span style="color: red">Price</span>:<%=oup2.getMoney()%>&nbsp;||&nbsp;&nbsp;&nbsp;<a
					href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup2.getSpots_Id()%>">More</a>...</td>
			</tr>
		</table>
		<br>
		<table>
			<tr>
				<td class="td1">ID:<%=oup3.getSpots_Id()%>&nbsp;&nbsp;&nbsp;&nbsp;编号:<%=oup3.getSpots_Id()%></td>
				<td class="td1">ID:<%=oup4.getSpots_Id()%>&nbsp;&nbsp;&nbsp;&nbsp;编号:<%=oup4.getSpots_Id()%></td>
			</tr>
			<tr>
				<td><a href="<%=basePath%>servlet/ImageServlet?spots_Id=<%=oup3.getSpots_Id()%>"><img src="<%=basePath%><%=oup3.getImage()%>"></a></td>
				<td><a href="<%=basePath%>servlet/ImageServlet?spots_Id=<%=oup4.getSpots_Id()%>"><img src="<%=basePath%><%=oup4.getImage()%>"></a></td>
			</tr>
			<tr>
				<td><span class="td2"><a href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup3.getSpots_Id()%>"><%=oup3.getSpots_name()%></a></span></td>
				<td><span class="td2"><a href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup4.getSpots_Id()%>"><%=oup4.getSpots_name()%></a></span></td>
			</tr>
			<tr>
				<td class="td3"><span style="color: red">Price</span>:<%=oup3.getMoney()%>&nbsp;||&nbsp;&nbsp;&nbsp;<a
					href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup3.getSpots_Id()%>">More</a>...</td>
				<td class="td3"><span style="color: red">Price</span>:<%=oup4.getMoney()%>&nbsp;||&nbsp;&nbsp;&nbsp;<a
					href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup4.getSpots_Id()%>">More</a>...</td>
			</tr>
		</table>
		<br>
	</div>
	<div>
		<br>
		<%
			INumberDAO like1 = NumberFactory.getNumberFactory();
			int i = like1.number();//总记录数
			int s = (i / 4);//总页数
			int value=0;//初始记录数
			
			String number=(String)request.getAttribute("value");
			if(number!=null){
				value=Integer.parseInt(number);
			}
		%>
		<div id="link2" class="bb">
			当前在<%=(value*4)+1%>～<%=(value*4)+4%>条,
			<%=value+1%>/<%=s %>页,总<%=i%>条 去<select name="type" onchange="openURL('<%=basePath%>servlet/ViewpointServlet?value=<%=0%>')">
				<%
					for (int x = 0; x < s; x++) {
				%>
				<option><%=(x*4)+1%>～<%=(x*4)+4%></option>
				<%
					}
				%>
			</select> <br>
		</div>
	</div>
	<br>
	<div id="a" class="bb">
			<!--  
			<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=0%>" class="a"> 首 页 </a>
			<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=0%>" class="a"> 1 </a>
			<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=1%>" class="a"> 2 </a>
			<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=2%>" class="a"> 3 </a>
			<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=3%>" class="a"> 4 </a>
			<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=3%>" class="a"> 末 页 </a>
			 --> 
			<%if(value!=0){%>
				<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=0%>">首 页</a>
				<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=value-1%>">上一页</a>
			<%}%>
			<%if(value!=(s-1)){%>
				<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=value+1%>">下一页</a>
				<a href="<%=basePath%>servlet/ViewpointServlet?value=<%=s-1%>">末 页</a>
			<%}%>
		
	</div>
	<div id="bottom">
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>