function a1() {
	document.getElementById('center').style.display = 'block';
	document.getElementById('liuyan').style.display = 'none';
}
function a2() {
	document.getElementById('center').style.display = 'none';
	document.getElementById('liuyan').style.display = 'block';
}
function a3(f) {
	if(f.text.value==""){
		window.alert("�������ݲ���Ϊ��!");
		return false;
	}
	window.alert("���Գɹ�!");
}
function a4(){
	window.alert("���óɹ�!");
}
