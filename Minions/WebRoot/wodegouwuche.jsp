<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的购物车</title>
<link rel="stylesheet" type="text/css" href="<%=basePath%>/styles/wodegouwuche.css"/>
</head>

<body>
<!--这是我的购物车 头部开始-->
       <div id="gouwuche_top">
        <table width="900" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="322" rowspan="3"><a href="#"><img src="<%=basePath%>/images/logo.png" width="304" height="39" border="0" /></a></td>
                <td width="127" rowspan="3">&nbsp;</td>
                <td width="451">&nbsp;</td>
              </tr>
              <tr>
                <td><img src="<%=basePath%>/images/daohang1.gif" width="438" height="19" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
        </table>
        <hr />
       </div>
       

<!--这是我的购物车 头部结束-->
<!--这是我的购物车 main开始-->
<div id="gouwuche_main">
    <div id="gouwuche_main_1">
        <table width="900" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td ><font color="#f14e54" size="+2"><strong>我的购物车</strong></font></td>
          </tr>
        </table>
        <table width="900" height="30" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><font color="#f14e54" size="-1">提示：</font><font color="#999999" size="-1">加入购物车的商品无法为您保留库存，请及时下                                                                               单购买，商品价格以订单提交时的价格为准。</font></td>
          </tr>
        </table>
    </div>
    <div id="gouwuche_main_2">
   	  <s:if test="#session.allBuyGoods.size()>0">
      <table width="900" height="118" border="1" cellspacing="0" cellpadding="0" bordercolor="#cccccc" id="shangpinxinxi">
        <tr>
          <td width="111" bgcolor="#e7e7e7"></td>
          <td width="278" bgcolor="#e7e7e7">商品名称</td>
          <td width="114" bgcolor="#e7e7e7">麦包价</td>
          <td width="116" bgcolor="#e7e7e7">数量</td>
          <td width="130" bgcolor="#e7e7e7">颜色</td>
          <td width="83" bgcolor="#e7e7e7">小计</td>
          <td width="52" bgcolor="#e7e7e7">操作</td>
        </tr>
        <s:iterator value="#session.allBuyGoods" id="tag" status="num">
        <tr>
          <td width="111"><a href="shangpin.jsp"><img src="<%=basePath%>/images/01.jpg" width="111" height="124"  border="0"/></a></td>
          <td height="37" class="shangpin"><a href="shangpin.jsp">[<s:property value="#tag.brand.brandName" />]<s:property value="#tag.good.goodName" /> </a></td>
          <td>￥<s:property value="#tag.good.goodPrice" /></td>
<!--           <td><input name="shuliangjian"  value="－ " type="button"  id="shuliangjian" style="width: 23px ; height: 23px" onclick="jian()"/> <span id="nnn"><s:property value="#tag.number"/></span><input name="shuliangjia" type="button" style="width: 23px ; height: 23px"  value="＋" id="shulangjia" onclick="jia()"/></td> -->
          <td><s:property value="#tag.number"/></td>
          <td><s:property value="#tag.color.color" /></td>
          <td>￥<span id="xx" value=""></span><s:property value="#tag.totalPrice"/></td>
          <td class="shanchu"><a href="javascript:delet(<s:property value="#tag.good.goodId" />,<s:property value="#tag.color.colorId" />)" ><font color="#FF0000">删除</font></a></td>
        </tr>
        </s:iterator>
        <script language="JavaScript">
function jia(){
	var b=document.getElementById("nnn");
	var d=document.getElementById("yi");
	var c=b.outerText;
	c++;
	b.innerHTML=c;
	d.innerHTML=c+"件";
	var b=document.getElementById("fengzi");
	b.value=c;
	}
</script>
<script language="JavaScript">
function jian(){
	var b=document.getElementById("nnn");
	var d=document.getElementById("yi");
	var c=b.outerText;
	if(c>1){
		c--;	
		b.innerHTML=c;
		d.innerHTML=c+"件";
	var b=document.getElementById("fengzi");
	b.value=c;
	}
	}
</script>
        <tr bgcolor="#f1f1f1">
          <td colspan="7" align="right"> 商品件数：<s:property value="#session.allNumber"/>件 合计重量：1.03kg 商品总金额（不包含运费）：￥<span id="xxx" value=""></span><s:property value="#session.allPrice"/>元</td>
        </tr>
      </table>
      <script language="JavaScript">
      function delet(gid,cid){
      if(confirm("您确定要删除该件商品？")){
      		location.href="/Minions/user/addGoods_deleteUserGoods?dgoodId="+gid+"&dcolorId="+cid;
      }
      }
	  </script>
</div>
    <div id="gouwuche_main_3">
        <table width="900" height="50" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td align="left"><a href="/Minions/findGoods/shouye_getBanners.action"><img src="<%=basePath%>/images/jixugouwu.gif" width="124" height="36" border="0" /></a></td>
                <td align="right"><a href="/Minions/heduixinxi.jsp"><img src="<%=basePath%>/images/qujiesuan.gif" width="123" height="35"  border="0"/></a></td>
              </tr>
        </table>
    </div>
      </s:if>
      <s:else>
      <div>
      		<p align="center"><h2>您的购物车里还没有商品快去购物吧！<a href="/Minions/shouye.jsp">返回</a></h2></p>
      </div>
      </s:else>
  <div id="gouwuche_main_3">
    <table width="800" height="30"border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="<%=basePath%>/images/hougdian.gif" width="9" height="9" /><font color="#747474">您还可以选购以下商品</font></td>
              </tr>
      </table>
    <hr color="#999999" />
  </div>
    <div id="gouwuche_main_3">
        <div id="gouwuche_main_3_1">
            <table width="145" border="0" cellspacing="0" cellpadding="0" >
                      <tr>
                        <td align="center"><a href="shouye2.html"><img src="<%=basePath%>/images/01(1).jpg" width="144" height="141"  border="0"/></a></td>
                      </tr>
                      <tr>
                        <td align="center">￥19.00</td>
                      </tr>
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/jiaru.gif" width="79" height="23" border="0"/></a></td>
                      </tr>
          </table>
      </div>
        
       <div id="gouwuche_main_3_2"> 
             <table width="145" border="0" cellspacing="0" cellpadding="0" >
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/01(2).jpg" width="144" height="141" border="0"/></a></td>
                      </tr>
                      <tr>
                        <td align="center">￥209.00</td>
                      </tr>
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/jiaru.gif" width="79" height="23" border="0"/></a></td>
                      </tr>
             </table>
       </div>
       
       <div id="gouwuche_main_3_3"> 
             <table width="145" border="0" cellspacing="0" cellpadding="0" >
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/01(3).jpg" width="145" height="145" border="0" /></a></td>
                      </tr>
                      <tr>
                        <td align="center">￥289.00</td>
                      </tr>
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/jiaru.gif" width="79" height="23" border="0"/></a></td>
                      </tr>
             </table>
       </div>
       
       <div id="gouwuche_main_3_4"> 
             <table width="145" border="0" cellspacing="0" cellpadding="0" >
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/01(4).jpg" width="145" height="145"  border="0"/></a></td>
                      </tr>
                      <tr>
                        <td align="center">￥279.00</td>
                      </tr>
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/jiaru.gif" width="79" height="23" border="0"/></a></td>
                      </tr>
             </table>
       </div>
       
       <div id="gouwuche_main_3_5"> 
             <table width="145" border="0" cellspacing="0" cellpadding="0" >
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/01(5).jpg" width="145" height="145"  border="0"/></a></td>
                      </tr>
                      <tr>
                        <td align="center">￥109.00</td>
                      </tr>
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/jiaru.gif" width="79" height="23" border="0"/></a></td>
                      </tr>
             </table>
       </div>
       
       <div id="gouwuche_main_3_6"> 
             <table width="145" border="0" cellspacing="0" cellpadding="0" >
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/01(6).jpg" width="145" height="145"  border="0	"/></a></td>
                      </tr>
                      <tr>
                        <td align="center">￥420.00</td>
                      </tr>
                      <tr>
                        <td align="center"><a href="#"><img src="<%=basePath%>/images/jiaru.gif" width="79" height="23" border="0"/></a></td>
                      </tr>
             </table>
       </div>
       
    </div>

    <div id="gouwuche_main_4">
    <table width="900" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>&nbsp;</td>
          </tr>
    </table>
    </div>
    
    

   
        </div>







</div>
 
<!--这是我的购物车 main结束-->
<!--这是我的购物车 footer开始-->
<div id="gouwuche_main_5">
        <table width="900" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="<%=basePath%>/images/shoucang_foot_1.gif" width="180" height="41" /></td>
                <td><img src="<%=basePath%>/images/shoucang_foot_2.gif" width="180" height="41" /></td>
                <td><img src="<%=basePath%>/images/shoucang_foot_3.gif" width="180" height="41" /></td>
                <td><img src="<%=basePath%>/images/shoucang_foot_4.gif" width="180" height="41" /></td>
                <td><img src="<%=basePath%>/images/shoucang_foot_5.gif" width="180" height="41" /></td>
              </tr>
        </table>
    </div>
        <div id="gouwuche_main_6">
                <table width="800" border="0" cellspacing="0" cellpadding="0" align="center">
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><font size="-1">©2007-2012Mbaobao All Rights Reserved.嘉兴麦宝科技信息有限公司   版权所有，禁止非法复制 <a href="#">经营许可证编号：浙B2-20100425</a></font></td>
                  </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
            </table>
        </div>

<!--这是我的购物车 footer结束-->
</body>
</html>
