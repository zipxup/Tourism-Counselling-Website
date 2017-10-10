function a1(f) {
	if (f.title.value == "") {
		window.alert("遇见的问题未填写!");
		return false;
	}
	if (f.content.value == "") {
		window.alert("详细描述未填写!");
		return false;
	}
	if (f.n11.value.length != 4) {
		window.alert("验证码输入错误");
		return false;
	}
	window.alert("提交成功!");
}
function a2() {
	alert("重置成功!");
}
function loadimage() {
	document.getElementById("image").src = "../common/image.jsp?"
			+ Math.random();
}