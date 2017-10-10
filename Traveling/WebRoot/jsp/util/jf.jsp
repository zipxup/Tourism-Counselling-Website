<%@page import="com.vo.SpotsManager"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page
	import="org.jfree.chart.ChartFactory,org.jfree.chart.JFreeChart,org.jfree.chart.plot.PlotOrientation,org.jfree.chart.servlet.ServletUtilities,org.jfree.data.category.DefaultCategoryDataset,org.jfree.chart.ChartUtilities"%>
<%
	DefaultCategoryDataset dataset = new DefaultCategoryDataset();

	List list = (List) request.getAttribute("number");
	for (int i = 0; i < list.size(); i++) {
		SpotsManager spotsManager = (SpotsManager) list.get(i);
		int x = Integer.parseInt(spotsManager.getNumber());
		int y = Integer.parseInt(spotsManager.getNumbermax());
		String spots_name = spotsManager.getSpots_name();

		dataset.addValue(y, "1", spots_name);
		dataset.addValue(x, "2", spots_name);
	}

	JFreeChart chart = ChartFactory.createBarChart3D("巴蜀行报名信息图",// 图表标题 
			"景点名称",//X轴的显示标题
			"允许最大人数",//Y轴的显示标题
			dataset,// 数据集
			PlotOrientation.VERTICAL,// 图表方向：水平、垂直
			false,// 是否包含图例
			false,//是否包含提示
			false//是否包含URL
			);
	String fileName = ServletUtilities.saveChartAsJPEG(chart, 800, 500,
			null, null);

	String url = request.getContextPath()
			+ "/servlet/DisplayChart?filename=" + fileName;
%>
<%
	//获取系统路径
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>柱形分布图</title>
<link href="<%=basePath%>css/jf.css" rel="stylesheet" type="text/css" />
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
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>> <a
			href="<%=basePath%>servlet/ViewpointServlet?value=0">景点信息</a>>> 柱形分布图
	</div>
	<div id="center">
		<br>
		<p align="center">
			<img src="<%=url%>" border=1 alt="未显示图片请刷新">
		</p>
	</div>
	<div id="lift" class="bb">
		<img alt="" src="<%=basePath%>image/biao2.jpg">最大报名人数
		<img alt="" src="<%=basePath%>image/biao1.jpg">已经报名人数
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="<%=basePath%>servlet/TJfServlet?i=0">上一页</a>
		<a href="<%=basePath%>servlet/TJfServlet?i=8">下一页</a>
	</div>
	<div>
		<br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>