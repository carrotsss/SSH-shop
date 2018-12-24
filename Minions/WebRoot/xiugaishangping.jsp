<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'xiugaishangping.jsp' starting page</title>
    
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
    <table border="2">
    	<tr align="center">
    		<td><strong>商品编号</strong></td>
    		<td><strong>商品名称</strong></td>
    		<td><strong>操作</strong></td>
    	</tr>
    	<s:iterator value="#session.goodd">
    	<tr align="center">
	    	<td><s:property value="goodId"/></td>
	    	<td><s:property value="goodName"/></td>
	    	<td><input type="button" value="修改描述" onclick="location='/Minions/goodsContent/doContent_getUpdateGoods?goodId=<s:property value="goodId"/>'"/></td>
    	</tr>
    	</s:iterator>
		<tr align="center">
			<td colspan="7">
		        	<s:if test="currentPage!=1">
		        		<a href="/Minions/goodsContent/doContent_getAllGoods?currentPage=1">首页</a>
		        		<a href="/Minions/goodsContent/doContent_getAllGoods?currentPage=<s:property value="currentPage-1"/>"><<</a>
		        	</s:if>
		        <s:iterator var="i" begin="1" end="#session.totalSize">
				    <s:if test="#session.currentPage==#i">        
				       [<s:property value="#i"/>]
				    </s:if>
				    <s:if test="#session.currentPage!=#i">
				       <a href="/Minions/goodsContent/doContent_getAllGoods?currentPage=<s:property value="#i"/>"><s:property value="#i"/></a>
				    </s:if>
		   	 	</s:iterator>       
		        <s:if test="currentPage<#session.totalSize">
		        	<a href="/Minions/goodsContent/doContent_getAllGoods?currentPage=<s:property value="currentPage+1"/>">>></a>
		        	<a href="/Minions/goodsContent/doContent_getAllGoods?currentPage=<s:property value="#session.totalSize" />">末页</a>
		        </s:if>
        		<s:property value="#session.currentPage"/>/<s:property value="#session.totalSize"/>
        	</td>
        </tr>
    </table>
  </body>
</html>
