<%@page import="com.vo.Image"%>
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
<title>景点图片</title>
  <link rel="stylesheet" href="<%=basePath%>css/image/style.css" type="text/css" media="all">
  <script type="text/javascript" src="<%=basePath%>js/image/jquery-1.4.2.min.js" ></script>
  <script type="text/javascript" src="<%=basePath%>js/image/roundabout.js"></script>
  <script type="text/javascript" src="<%=basePath%>js/image/roundabout_shapes.js"></script>
  <script type="text/javascript" src="<%=basePath%>js/image/gallery_init.js"></script>
  <style>
  .bb{
  font-family:STKaiti;
  }
  </style>
</head>
<body>
      	<%List list=(List)request.getAttribute("Image");
    			Image value=(Image)list.get(0);
    			%>
  <div id="center" class="bb">
  	<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>
  	<a href="<%=basePath%>servlet/ViewpointServlet?value=0">景点信息</a>>>
  	<a href="<%=basePath%>servlet/ViewpointDetail?spots_Id=<%=value.getSpots_Id()%>">景点详情</a>>>
  	图片详情
  </div>
  <div id="name">
  	<%=value.getName() %>
  </div>
  <section id="gallery">
  	<div class="container">
    	<ul id="myRoundabout">
      	<li><img src="<%=basePath%><%=value.getImage1() %>" alt=""></li>
        <li><img src="<%=basePath%><%=value.getImage2() %>" alt=""></li>
        <li><img src="<%=basePath%><%=value.getImage3() %>" alt=""></li>
        <li><img src="<%=basePath%><%=value.getImage4() %>" alt=""></li>
        <li><img src="<%=basePath%><%=value.getImage5() %>" alt=""></li>
      </ul>
  	</div>
  </section>
  	<div style="padding-left: 250px">
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>