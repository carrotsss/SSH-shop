<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script type="text/javascript">
function change(id){
	alert(id);
	document.getElementById(id).readOnly=false;
	document.getElementById(id).style.border="1px solid grey";
	}
function changpic(id){
	alert(id);
	var url=document.getElementById(id).value;
	url=url.split("\\");
	alert(url[url.length-1]);
	var name=url[url.length-1];
	alert(name);
	document.getElementById('imgs').src="file.jsp?fileName="+name;
	
	}

</script>
<style type="text/css">
#input{
	border:hidden;
	} 
#changes{
	width:100px;
	height:100px;
	background-color:#009;
	}
#changes1{
	width:100px;
	height:100px;
	background-color:#099;
	}
#file_upload{
	display:none;
	}
#change{
	width:40px;
	height:20px;
	font-family:"微软雅黑";
	font-size:12px;
	}
</style>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  
  <input  size="30" type="text" id="input" value="我的啊哈哈" readonly="readonly"/>
<input type="button" id="change" value="编辑" onclick="change('input')" />
<br />

<input type="file" id="file_upload"  onchange="changpic('file_upload')"/>
<img id="imgs" src="file.jsp?fileName=large_elvf_41230000bbd6125e.jpg"  onclick = "file_upload.click();">
 <br>
  </body>
</html>
