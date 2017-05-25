$(document).ready(function() {
		// 获得文本框对象
		var t = $("#text_box");
		// 初始化数量为1,并失效减
		$('#min').attr('disabled', true);
		// 数量增加操作
		$("#add").click(function() {
			t.val(parseInt(t.val()) + 1)
			if (parseInt(t.val()) != 1) {
				$('#min').attr('disabled', false);
			}

		})
		// 数量减少操作
		$("#min").click(function() {
			t.val(parseInt(t.val()) - 1);
			if (parseInt(t.val()) == 1) {
				$('#min').attr('disabled', true);
			}

		})

	});

function cli(Obj)
{
// 获取控制其它复选框的对象obj
var collid = document.getElementById("all")
// 获取需要全选，全不选功能的所有复选框
var coll = document.getElementsByName(Obj)
// 如果obj被选中，则全选
if (collid.checked){
   // 循环设置所有复选框为选中状态
   for(var i = 0; i < coll.length; i++)
     coll[i].checked = true;
}else{// 取消obj选中状态，则全不选
   // 循环设置所有复选框为未选中状态
   for(var i = 0; i < coll.length; i++)
     coll[i].checked = false;
	}
}

function check(){
	var oInput = document.getElementsByName("phone");
	for(var i=0;i<oInput.length;i++){
	if(document.getElementById("all").checked==true){
	oInput[i].checked=true;
	}else{
	oInput[i].checked=false;
	}
	} 
}

function check2(){
	// alert("测试 ");
	var coll = document.getElementsByName("phone");
	document.getElementById("all").checked = false;
}

function count(){
	var coll = document.getElementsByName("phone");
	var temp = 0;
	for ( var i = 0; i < coll.length; i++) {
		if (coll[i].checked == true) {
			temp +=1;
		}
	}
	document.getElementById("count").value = temp;
}

function clear2(){
	var oInput=document.getElementsByName("phone");
	var temp ;
	for(var i=0;i<oInput.length;i++){
		if(oInput[i].checked==true)
		{temp = "id=" + oInput[i].value + "&" ;}
	} 
	window.location.href="Cart_clear.action?"+temp;
}

function clearfirm() {
	var oInput = document.getElementsByName("phone");
	var temp = "";
	var count = 0;
	for ( var i = 0; i < oInput.length; i++) {
		if (oInput[i].checked == true) {
			if(count!=0){				
				temp += "," + oInput[i].value;
				temp = temp.replace(/\s+/g, "");// 去除空格
			}
			else{
				temp += oInput[i].value ;
				temp = temp.replace(/\s+/g, "");// 去除空格
			}
			count++;
		}
	}
	if(count>0){
			question = confirm("确定要付款吗？");  			   
			if (question == true){
				// alert("Cart_clear?id=" + temp + "&account_id=1");
				alert("恭喜付款成功");
				window.location.href = "Cart_clear?product_id=" + temp;
			}
			else{
				//alert("您还未选择要付款的商品");
				return false;
			}
	}
	else{
		alert("您还未选择要付款的商品");
		return false;
	}	
}

function deletefirm()
{
		question = confirm("确定要删除商品吗？");  			   
	if (question == true){
		alert("删除成功！");  	
		return true; }
		else{
			return false;
		}
}

function confirmConfirm() {
	question = confirm("确定要付款吗？");  			   
	if (question == true){
		alert("收货成功！可进入已成交查看订单或在评价晒单页面对商品进行评价！");
				window.location.href = "Cart_clear?product_id=" + temp;
	}
	else{
		return false;
	}
	
}