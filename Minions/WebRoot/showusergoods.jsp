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
    
    <title>My JSP 'showusergoods.jsp' starting page</title>
    <link href="<%=basePath%>/styles/global.css" type="text/css" rel="stylesheet" />
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
  <form action="admin/admin_sendGoods" method="post" id="formname">
  <table width="900" align="center" class="tables"  class="tables">
  	<tr>
  		<td>用户
  		</td>
  		<td>商品
  		</td>
  		<td>是否发货
  		</td>	
  	</tr>
  	 <s:iterator  value="#session.lstusersgoods" id="usersgoods"  >
   		<tr>
   			<td>
   			<s:property value="#usersgoods.Users.userName"/>
   			</td>
   			<td width="100">
   			<s:property value="#usersgoods.goods.goodName"/>
   			</td>
   			<td>
   			<s:if test="#usersgoods.status == 1">已发货</s:if>
   			<s:else><input name="sendgoodsId" value="<s:property value="#usersgoods.usersgoodsId"/>" type="checkbox"></s:else>
   			</td>
   		</tr>
   	</s:iterator>
  <tr>
  	<td></td>
  	<td></td>
  	<td><input type="button" value="批量发货提醒"  onclick="commit('formname')"></td>
  </tr>
  </table>
  </form>
  </div>
  </body>
</html>
