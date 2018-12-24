<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link href="<%=basePath%>/styles/global.css" type="text/css" rel="stylesheet" />
    <title>My JSP 'editpower.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	function commit(id){
	  if(confirm("确定执行该操作吗么?")){
	      //删除
	     	alert('操作成功');
	      document.getElementById(id).submit();
	  }
	}
	</script>
  </head>
  
  <body>
  	<div class="divs">
  <form action="admin/admin_changeAdminPower" method="post"  class="tables" id="formname">
  	 <input type="hidden" name="editAdminId" value="<s:property value="#session.editAdminId"/>">
		<s:checkboxlist list="#session.lstpower"  name="nowlstpower" listKey="powerId" listValue="powerName" value="#session.editlstpower.{powerId}"></s:checkboxlist>
	<input type="button" value="提交修改" onclick="commit('formname')">
  	</form>
  	</div>
  </body>
</html>
