<%@page import="common.DatabaseManager"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="com.jspsmart.upload.*"%>
<jsp:useBean id="mySmartUpload" scope="page"
	class="com.jspsmart.upload.SmartUpload" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>上传文件</title>
<link href="<%=basePath%>css/database.css" rel="stylesheet"
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
	</div>
	<div class="bb">
		<a href="<%=basePath%>servlet/IndexServlet">首 页</a>>>功能帮助>><a
			href="<%=basePath%>servlet/DatabaseServlet">资料库</a>>>上传文件
	</div>
	<div id="center" class="bb">
		<%
			SimpleDateFormat formatDate = new SimpleDateFormat("yyyyMM");
			Date nowtime = new Date();
			String formatnowtime = formatDate.format(nowtime);

			// 应保证在根目录中有此目录的存在,如果没有，下面则上创建新的文件夹
			File root = new File("C://Tomcat 6.0//wtpwebapps//image//"
					+ formatnowtime);
			if (!root.isDirectory()) {
				root.mkdir();
			}
			// 声明变量count，用来存储上传文件个数
			int count = 0;
			// 执行初始化操作
			mySmartUpload.initialize(pageContext);
			// 上传文件到服务器	
			mySmartUpload.upload();
			// 对上传到服务器的文件进行逐个处理
			for (int i = 0; i < mySmartUpload.getFiles().getCount(); i++) {
				com.jspsmart.upload.File myFile = mySmartUpload.getFiles()
						.getFile(i);// 取出一个文件
				if (!myFile.isMissing()) {// 只有myFile代表的文件存在时才执行存储操作
					myFile.saveAs("C://Tomcat 6.0//wtpwebapps//image//"
							+ formatnowtime + "//" + myFile.getFileName());// 保存该文件到web应用程序下的upload目录 
					//  显示当前文件信息
					out.println("字段名 = " + myFile.getFieldName() + "<BR>");
					out.println("大小 = " + myFile.getSize() + "<BR>");
					out.println("文件姓名 = " + myFile.getFileName() + "<BR>");
					out.println("文件后缀 = " + myFile.getFileExt() + "<BR>");
					out.println("路径 = " + myFile.getFilePathName() + "<BR>");
					count++;

				}
				DatabaseManager db = new DatabaseManager();
				String time = new java.text.SimpleDateFormat(
						"yyyy-MM-dd HH:mm:ss").format(new java.util.Date());
				String sql = "insert into database1(name,pop,information,time) value('"
						+ myFile.getFileName()
						+ "','"
						+ session.getAttribute("name")
						+ "','"
						+ myFile.getFilePathName() + "','" + time + "')";
				db.executeUpdate(sql);
				db.close();
			}
		%>
	</div>

	<div>
		<jsp:include page="../common/bottom.jsp"></jsp:include>
	</div>
</body>
</html>