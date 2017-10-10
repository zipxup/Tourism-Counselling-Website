<%@ page language="java" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
	<span><SCRIPT language=JavaScript>
		tmpDate = new Date();
		date = tmpDate.getDate();
		month = tmpDate.getMonth() + 1;
		year = tmpDate.getYear();
		document.write(year);
		document.write(".");
		document.write(month);
		document.write(".");
		document.write(date);
		document.write(" ");
		myArray = new Array(6);
		myArray[0] = "星期日 ";
		myArray[1] = "星期一 ";
		myArray[2] = "星期二 ";
		myArray[3] = "星期三 ";
		myArray[4] = "星期四 ";
		myArray[5] = "星期五 ";
		myArray[6] = "星期六 ";
		weekday = tmpDate.getDay();
		if (weekday == 0 | weekday == 6) {
			document.write(myArray[weekday]);
		} else {
			document.write(myArray[weekday]);
		};
	</SCRIPT> <SCRIPT type="text/javascript">
								var tags_before_clock = "";
								var tags_after_clock = "";
								if (navigator.appName == "Netscape") {
									document
											.write('<layer id="clock"></layer>');
								}
								if (navigator.appVersion.indexOf("MSIE") != -1) {
									document.write('<span id="clock"></span>');
								}
								function showclock() {
									var date = new Date();
									var hour = date.getHours();
									var min = date.getMinutes();
									var sec = date.getSeconds();
									var col = ":";
									var spc = " ";
									if (hour > 12) {
										apm = "P.M.";
										hour = hour - 12;
									} else {
										apm = "A.M.";
									}
									if (hour == 0)
										hour = 12;
									if (min <= 9)
										min = "0" + min;
									if (sec <= 9)
										sec = "0" + sec;
									if (navigator.appName == "Netscape") {
										document.clock.document
												.write(tags_before_clock + hour
														+ col + min + col + sec
														+ spc
														+ tags_after_clock);
										document.clock.document.close();
									}
									if (navigator.appVersion.indexOf("MSIE") != -1) {
										clock.innerHTML = tags_before_clock
												+ hour + col + min + col + sec;
									}
								}
								setInterval("showclock()", 1000);
							</SCRIPT></span>
</body>
</html>