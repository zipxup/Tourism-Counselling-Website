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
		window.alert("留言内容不能为空!");
		return false;
	}
	window.alert("留言成功!");
}
function a4(){
	window.alert("重置成功!");
}
