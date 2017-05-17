/**
 * 
 
	document.onclick=ok;
	function ok(ev){	
		//事件
		ev=ev || window.event;		
		//获取事件源
		var target=ev.target  || ev.srcElement;		
		//获取点击事件
		var dragObj=target.id;
		//alert(dragObj);
		//获取所有的a标签
		var atagArray=document.getElementsByTagName("a");
		//alert(atagArray.length);
		for(var i=0;i<atagArray.length;i++){
			//alert(atagArray[i].id);
			if(dragObj==atagArray[i].id){
				//alert("in: "+atagArray[i].id);
				var objId =atagArray[i].style.color="#CC9933";			
			}else if(atagArray[i].id!=null&&atagArray[i].id!=dragObj){
				//alert("in: "+atagArray[i].id);
				var objId =atagArray[i].style.color="black";		
			}		
		}
	}

*/