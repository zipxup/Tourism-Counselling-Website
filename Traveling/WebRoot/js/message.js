function a1(f) {
	if (f.title.value == "") {
		window.alert("����������δ��д!");
		return false;
	}
	if (f.content.value == "") {
		window.alert("��ϸ����δ��д!");
		return false;
	}
	if (f.n11.value.length != 4) {
		window.alert("��֤���������");
		return false;
	}
	window.alert("�ύ�ɹ�!");
}
function a2() {
	alert("���óɹ�!");
}
function loadimage() {
	document.getElementById("image").src = "../common/image.jsp?"
			+ Math.random();
}