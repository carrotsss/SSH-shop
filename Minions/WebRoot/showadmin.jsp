<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showadmin.jsp' starting page</title>
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
   	<table  class="tables" align="center">
   	<s:iterator  value="#session.lstadmin" id="admins"  >
   		<tr>
   			<td width="200">
   			<s:property value="#admins.adminName"/>
   			</td>
   			<td width="200">
   			<s:property value="#admins.adminType"/>
   			<s:if test="#admins.adminType==2">admin
   			</s:if>
   			<s:if test="#admins.adminType==1">manager
   			</s:if>
   			<s:if test="#admins.adminType==0">employee
   			</s:if>
   			
   			
   			</td>
   			<td  width="200">
   			<s:if test="#session.admin.adminType>#admins.adminType"><a href="admin/admin_showAdminPower?editAdminId=<s:property value="#admins.adminId"/>">编辑权限</a></s:if>
   			
   			</td>
   			<td>
   			<s:if test="#session.admin.adminType>#admins.adminType"><a href="admin/admin_deleteAdmin?deleteAdminId=<s:property value="#admins.adminId"/>">删除</a></s:if>
   			
   			</td>
   		</tr>
   	</s:iterator>
   	</table>
   	</div>
  </body>
</html>
