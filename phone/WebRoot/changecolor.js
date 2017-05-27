/**
 * <!-- 菜单栏变色函数-->
 * 
 */


function showtable() {  
    var mainTable = document.getElementById("mainTable");  
    var li = mainTable.getElementsByTagName("tr");  
    for ( var i = 0; i <= li.length; i++) {  
        li[i].style.backgroundColor = "transparent";  
        li[i].onmouseover = function() {  
            this.style.backgroundColor = "#FF5809";  
        }  
        li[i].onmouseout = function() {  
            this.style.backgroundColor ="transparent";  
        }  
    }  
}  
showtable();  
