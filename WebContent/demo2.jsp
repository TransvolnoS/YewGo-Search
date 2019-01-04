<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-1.11.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<center>
		<div><div style="width:300px;">
			<h1 style="background-color:blue;"><font color="white">YewGo搜索</font></h1></div>
			<div>
				<input name="kw" id="tid" style="width:300px;height:20px"><input type="button" value="新的征程">
			</div>
			<div id="did" style="border: 1px solid gray;width: 300px;position:relative;left:-34px;display:none"></div>
		</div> 
	</center>
</body>
<script type="text/javascript" >
$(function(){
	$("#tid").keyup(function(){
		//alert(11);
		$.post("${pageContext.request.contextPath}/kw","kw="+$("#tid").val(),function(obj){
		$("#did").html("");
		if(obj!=""){
		$(obj).each(function(){
			//alert(this);
			var n=1;
			$("#did").append("<div onmouseover='over(this)' onmouseout='out(this)' name="+n+">"+this+"</div>");
			$("#did").show();
			n++;
			$("[name=n]").click(function(){
				alert(1);
				$("#tid").val($("[name=n]").val());
			})
		})
		}else{
			$("#did").hide();
		}	
		},"json")
	})
})

</script>
<script type="text/javascript" >
function over(obj){
	$(obj).css("background-color","gainsboro");
}
function out(obj){
	$(obj).css("background-color","white");
}


</script>
</html>