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
    
    <title>My JSP 'adminlog.jsp' starting page</title>
    <link href="<%=basePath%>/styles/global.css" type="text/css" rel="stylesheet" />
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
  <div class="divs">
  <table width="900" align="center" class="tables">
  	<tr>
  		<td>管理员名称
  		</td>
  		<td>管理员操作
  		</td>
  		<td>操作时间
  		</td>	
  	</tr>
  	 <s:iterator  value="#session.lstadminlog" id="adminlog"  >
   		<tr>
   			<td>
   			<s:property value="#adminlog.admin.adminName"/>
   			</td>
   			<td width="100">
   			<s:property value="#adminlog.actionName"/>
   			</td>
   			<td>
   			<s:property value="#adminlog.adminlogTime"/>
   			</td>
   		</tr>
   	</s:iterator>
  
  
  </table>
  </div>
  </body>
</html>
