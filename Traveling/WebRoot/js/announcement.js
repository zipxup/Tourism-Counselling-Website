function a1() {
	document.getElementById('id').style.display = 'block';
}
function b1() {
	document.getElementById('div1').style.display = 'block';
	document.getElementById('div2').style.display = 'block';
	document.getElementById('div3').style.display = 'none';
	document.getElementById('div4').style.display = 'none';
}
function b2() {
	document.getElementById('div1').style.display = 'none';
	document.getElementById('div2').style.display = 'none';
	document.getElementById('div3').style.display = 'block';
	document.getElementById('div4').style.display = 'block';
}
function c1(f) {
	if (f.title.value == "") {
		alert("����δ��д!");
		return false;
	}
	if (f.content.value == "") {
		alert("����δ��д!");
		return false;
	}
}
function c2() {
	alert("���óɹ�!");
}