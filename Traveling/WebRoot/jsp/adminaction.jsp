	<%@page import="java.util.List"%>
<%@page import="util.FileInput"%>
<%@page import="com.factory.Index_selectFactory"%>
<%@page import="com.vo.SpotsManager"%>
<%@page import="com.dao.IIndexSelectDAO"%>
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
<title>巴蜀行</title>
<link href="<%=basePath%>css/adminaction.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="<%=basePath%>js.adminaction.js"></script>
</head>
<body>
	<div>
		<jsp:include page="common/top.jsp"></jsp:include>
		<br>
	</div>
	<ul class="nav">
			<li class="nav4 drop"><a class="main down" href="#" title="跳转到首页"><b>首页</b></a></li>
		</ul>
		<ul class="nav">
			<li class="nav4 drop"><a class="main down" href="<%=basePath%>servlet/IndexServlet" title="跳转到本页"><b>信息页面</b></a>
				<ul>
					<li><a href="<%=basePath%>servlet/ViewpointServlet?value=0"><b>申报·景点信息</b></a></li>
					<li><a href="<%=basePath%>servlet/GuideServlet"><b>导游资料</b></a></li>
					<li><a href="<%=basePath%>servlet/TJfServlet?i=0"><b>展示·条形图</b></a></li>
					<li><a href="<%=basePath%>servlet/TJsppieServlet"><b>展示·扇形图</b></a></li>
				</ul>
			</li>
		</ul>
		<ul class="nav">
			<li class="nav4 drop"><a class="main down" href="<%=basePath%>servlet/IndexServlet" title="跳转到本页"><b>功能页面</b></a>
				<ul>
					<li><a href="<%=basePath%>servlet/AannouncementServlet"><b>公告</b></a></li>
					<li><a href="<%=basePath%>servlet/DatabaseServlet"><b>资料库</b></a></li>
					<li><a href="<%=basePath%>jsp/message/message.jsp"><b>巴蜀行·留言板</b></a></li>
				</ul>
			</li>
		</ul>
	<div id="center">
		<%	List list=(List)request.getAttribute("List");	
			SpotsManager oup = (SpotsManager) list.get(0);
		%>
		<div id="center_one">
			<br>
			<table>
				<tr>
					<td colspan="4" style="padding-left: 60px;font-family:STKaiti">编号:<%=oup.getSpots_Id()%></td>
				</tr>
				<tr>
					<td colspan="4" ><b style="color: red; padding-left: 150px; font-size: 20px; font-family:STKaiti">
						
						<a href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=oup.getSpots_Id()%>"><%=oup.getSpots_name() %></a></b>
						
						</td>
				</tr>
				<tr>
					<td colspan="4"><br></td>
				</tr>
				<tr>
					<td style="padding-left: 20px" rowspan="5">
					<a href="<%=basePath%>servlet/ImageServlet?spots_Id=<%=oup.getSpots_Id()%>"><img src="<%=basePath%><%=oup.getImage()%>" style="border: 0px" title="跳转到详细页面"></a>
					</td>
				</tr>
				<tr>
					<td style="padding-left: 40px;font-family:STKaiti">景点星级:<%int p=Integer.parseInt(oup.getXingji());
								switch(p){
								case 1:out.print("★");break;
								case 2:out.print("★★");break;
								case 3:out.print("★★★");break;
								case 4:out.print("★★★★");break;
								case 5:out.print("★★★★★");break;
							} %>
					</td>
					<td style="font-family:STKaiti" colspan="2" id="li">
					<a href="#">申报金额:<%=oup.getMoney() %>
						<span style="font-family:STKaiti">包含食宿，住宿按照<br>旅游协议上规定的酒店居住，<br>如不符实，可举报。</span>
					</a>
					</td>
				</tr>
				<tr>
					
					<td style="padding-left: 40px;font-family:STKaiti" colspan="2">已报名人数:
						<%=oup.getNumber() %>/<%=oup.getNumbermax() %>
					</td>
				</tr>
				<tr>
					<td style="padding-left: 40px;font-family:STKaiti" colspan="2">出发时间:<%=oup.getDatatime() %>
					</td>
					<td style="padding-left: 40px;font-family:STKaiti">向导:<a href="<%=basePath%>servlet/Guide?id=<%=oup.getGuideID()%>"><%=oup.getName() %></a></td>
				</tr>
				<tr>
					<td style="padding-left: 40px;font-family:STKaiti" colspan="3">简介:<%=oup.getIntroduction_j() %>
					</td>
				</tr>
			</table>
		</div>
		<div style="text-align: right;">
			<a href="<%=basePath%>servlet/IndexServlet"><img src="<%=basePath%>image/templatemo_gototop.jpg" style="border: 0px"></a>
		</div>
	</div>
	<div id="bottom">
		<jsp:include page="common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>