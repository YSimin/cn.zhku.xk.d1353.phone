function checkpassword2() {
	var p1 = document.getElementsByName("password");
	var p2 = document.getElementsByName("password2");
	alert(p1.value + p2.value);
	if (p1 != p2) {
		// alert(p1+p2);
		alert("两次输入的密码不一致！请重新输入");
		return false;
	}
	alert(p1.value + p2.value);
	return true;
}
function checkpassword() {
	var p1 = document.getElementById("search2").value;
	var p2 = document.getElementById("search3").value;
	if (p1 != p2) {
		alert("两次输入的密码不一致！请重新输入");
		document.getElementById("search2").value = "";
		document.getElementById("search3").value = "";
		return false;
	}
	return true;
}
