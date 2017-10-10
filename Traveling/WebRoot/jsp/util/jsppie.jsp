<%@page import="com.vo.SpotsManager"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page
	import="org.jfree.chart.ChartFactory,org.jfree.chart.JFreeChart,org.jfree.chart.servlet.ServletUtilities,org.jfree.data.general.DefaultPieDataset,org.jfree.chart.ChartUtilities,org.jfree.chart.title.TextTitle,org.jfree.chart.plot.PiePlot,java.awt.Color,java.awt.Font"%>
<%
	//ͼƬ����
	String title = "�����б������ηֲ�ͼ";
	//�趨����Դ
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
		//��һ������Ϊ���ƣ��ڶ���������double��������
		piedata.setValue(name, (x / value) * 100);
	}

	//����JFreeChart����ʹ��ChartFactory������JFreeChart,�ܱ�׼�Ĺ������ģʽ
	JFreeChart chart = ChartFactory.createPieChart(title, piedata,
			true, true, true);
	chart.setTitle(new TextTitle(title, new Font("����", Font.ITALIC, 15)));
	chart.addSubtitle(new TextTitle("����16�ھ��㱨����Ա�ٷֱ�", new Font("����",Font.ITALIC, 12)));
	//�趨����
	chart.setBackgroundPaint(Color.white);
	//����ͼʹ��һ��PiePlot 
	PiePlot plot = (PiePlot) chart.getPlot();
	plot.setLabelFont(new Font("����", Font.TRUETYPE_FONT, 12));
	//���õ�һ�� section �Ŀ�ʼλ�ã�Ĭ����12���ӷ���
	//plot.setStartAngle(270);
	//ָ�� ����ͼ�ĵڶ����ֵ���ɫ
	plot.setSectionPaint(1, Color.black);
	//ָ����ʾ������ͼ��Բ�λ�����Բ��
	//plot.setCircular(false);

	String fileName = ServletUtilities.saveChartAsJPEG(chart, 800, 400,null, null);

	String url = request.getContextPath() + "/servlet/DisplayChart?filename=" + fileName;
%>
<%
	//��ȡϵͳ·��
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<title>���ηֲ�ͼ</title>
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
		<a href="<%=basePath%>servlet/IndexServlet">�� ҳ</a>>>
		<a href="<%=basePath%>servlet/ViewpointServlet?value=0">������Ϣ</a>>> ���ηֲ�ͼ
	</div>
	<div id="center">
		<br>
		<p align="center">
			<img src="<%=url%>" alt="δ��ʾͼƬ��ˢ��">
		</p>
	</div>
	<div>
		<br>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>
