<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
<!doctype html>
<html>
<head>
	<meta charset="utf-8" />
	<title>KindEditor JSP</title>
</head>
<body>
	<a href="/Minions/goodsContent/doContent_getUpdateGoods">修改商品描述</a><br/>
	<a href="/Minions/goodsContent/goodsEvalute_getGoods">商品评价</a>
</body>
</html>