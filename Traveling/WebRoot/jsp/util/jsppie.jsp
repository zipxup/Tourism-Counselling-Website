<%@page import="com.vo.SpotsManager"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page
	import="org.jfree.chart.ChartFactory,org.jfree.chart.JFreeChart,org.jfree.chart.servlet.ServletUtilities,org.jfree.data.general.DefaultPieDataset,org.jfree.chart.ChartUtilities,org.jfree.chart.title.TextTitle,org.jfree.chart.plot.PiePlot,java.awt.Color,java.awt.Font"%>
<%
	//图片标题
	String title = "巴蜀行报名扇形分布图";
	//设定数据源
	DefaultPieDataset piedata = new DefaultPieDataset();

	List list = (List) request.getAttribute("number");

	int value = 0;

	for (int i = 0; i < list.size(); i++) {
		SpotsManager spotsManager = (SpotsManager) list.get(i);
		int x = Integer.parseInt(spotsManager.getNumber());
		value = value + x;

	}
	for (int i = 0; i < list.size(); i++) {
		SpotsManager spotsManager = (SpotsManager) list.get(i);
		double x = Integer.parseInt(spotsManager.getNumber());
		String name = spotsManager.getSpots_name();
		//第一个参数为名称，第二个参数是double类型数据
		piedata.setValue(name, (x / value) * 100);
	}

	//创建JFreeChart，都使用ChartFactory来创建JFreeChart,很标准的工厂设计模式
	JFreeChart chart = ChartFactory.createPieChart(title, piedata,
			true, true, true);
	chart.setTitle(new TextTitle(title, new Font("隶书", Font.ITALIC, 15)));
	chart.addSubtitle(new TextTitle("最新16期景点报名人员百分比", new Font("隶书",Font.ITALIC, 12)));
	//设定背景
	chart.setBackgroundPaint(Color.white);
	//扇形图使用一个PiePlot 
	PiePlot plot = (PiePlot) chart.getPlot();
	plot.setLabelFont(new Font("楷体", Font.TRUETYPE_FONT, 12));
	//设置第一个 section 的开始位置，默认是12点钟方向
	//plot.setStartAngle(270);
	//指定 扇形图的第二部分的颜色
	plot.setSectionPaint(1, Color.black);
	//指定显示的扇形图上圆形还是椭圆形
	//plot.setCircular(false);

	String fileName = ServletUtilities.saveChartAsJPEG(chart, 800, 400,null, null);

	String url = request.getContextPath() + "/servlet/DisplayChart?filename=" + fileName;
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
<title>扇形分布图</title>
<link href="<%=basePath%>css/jsppie.css" rel="stylesheet"
	type="text/css" />
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
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>
		<a href="<%=basePath%>servlet/ViewpointServlet?value=0">景点信息</a>>> 扇形分布图
	</div>
	<div id="center">
		<br>
		<p align="center">
			<img src="<%=url%>" alt="未显示图片请刷新">
		</p>
	</div>
	<div>
		<br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>
