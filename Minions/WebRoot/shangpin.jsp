<%@page import="com.minions.entity.Goods"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>[<s:property value="#session.brand.brandName" />]<s:property value="#session.goods.goodName" /> </title>


	<link rel="stylesheet" href="<%=path %>/kindeditor/themes/default/default.css" />
	<link rel="stylesheet" href="<%=path %>/kindeditor/plugins/code/prettify.css" />
	<script charset="utf-8" src="<%=path %>/kindeditor/kindeditor.js"></script>
<script charset="utf-8" src="<%=path %>/kindeditor/lang/zh_CN.js"></script>
<script charset="utf-8" src="<%=path %>/kindeditor/plugins/code/prettify.js"></script>

<link href="<%=basePath%>/styles/global.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/styles/shangpin.css" type="text/css" rel="stylesheet" />
<script src="<%=basePath%>/scripts/shangpin.js" type="text/javascript"></script>
<script src="<%=basePath%>/scripts/SpryTabbedPanels.js" type="text/javascript"></script>
<link href="<%=basePath%>/styles/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/styles/footer.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath%>/SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/SpryAssets/wodemaibaobao.css" rel="stylesheet" type="text/css" />
<script src="<%=basePath%>/SpryAssets/wodemaibaobao.js" type="text/javascript"></script>
<script src="<%=basePath%>/SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="<%=basePath%>/styles/toubu.css" rel="stylesheet" type="text/css" />
<script language="javascript">
function changePic(obj){	
	document.getElementById("showpic").src=obj.src;
	document.getElementById("bigpic").src=obj.src;
}
</script>

<script language="javascript">
function gouwuche(id){
	document.getElementById("id");
	window.location.href="wodegouwuche.jsp"
	}
</script>



</head>

<body>
<!--开始-->
 <!--头部开始-->
        <!--头部第一层开始-->
        <div id="header1">
        <table width="960" height="100%" border="0" cellspacing="0" cellpadding="0" id="header1_tab1">
          <tr>
            <td width="106"><img src="<%=basePath%>/images/wujiaoxing.gif" width="14" height="13" />收藏麦包包</td>
            <td width="222"><img src="<%=basePath%>/images/dianhua.gif" width="15" height="15" />订购热线:<img src="<%=basePath%>/images/dianhuahaoma.gif" width="100" height="14" /></td>
            <td width="162"><img src="<%=basePath%>/images/shouji.gif" width="9" height="16" /><a href="shoujimaibaobao.html">手机麦包包</a></td>
            <td width="96">
            <ul id="MenuBar2" class="MenuBarHorizontal">
              <li><a class="MenuBarItemSubmenu" href="#">我的麦包包</a>
                <ul>
                  <li><a href="#">我的麦豆</a></li>
                  <li><a href="#">我的收藏</a></li>
                </ul>
              </li>
              
            </ul>
				<script type="text/javascript">
                var MenuBar1 = new Spry.Widget.MenuBar("MenuBar2", {imgDown:"<%=basePath%>/SpryAssets/SpryMenuBarDownHover.gif", imgRight:"<%=basePath%>/SpryAssets/SpryMenuBarRightHover.gif"});
                </script>
			</td>
            <td width="67"><a href="#">我的帐户</a></td>
            <td width="65"><a href="daohang.html">网站导航</a></td>
             <td width="99" align="left" class="dengluyanse" target="_self"> <font color="red">  <s:if test="#session.user!=null">
            	<s:property value="#session.user.userTel"/>,您好！
            </s:if></font></td>
          
            <s:else>
            	<td width="99" align="right" class="dengluyanse">[ <b><a href="/Minions/denglu.jsp" target="_self">登 录</a></b>/<b><a href="/Minions/zhuce.jsp" target="_self">注 册</a></b> ]</td>
            </s:else>
          </tr>
        </table>
        </div>
        <!--头部第一层结束-->
<div id="dh_div">
        <!--头部第二层开始-->
        <div id="header2">
        <table width="960" border="0" cellspacing="0" cellpadding="0" id="header2_tab1">
          <tr>
            <td align="left"><img src="<%=basePath%>/images/logo4.png" width="304" height="39" /></td>
            <td class="header2_tab1_td2" height="86"><img src="<%=basePath%>/images/lzx.jpg" width="213" height="78" /></td>
            <td align="right">
             <table width="280" border="0" cellspacing="0" cellpadding="0" id="header2_tab2">
              <tr>
                <td><img src="<%=basePath%>/images/fangdajing.gif" width="13" height="13" /></td>
                <td  align="left"><input name="" type="text" value="年中庆" class="nianzhongqing"/></td>
                <td><input name="" type="submit" value="搜索" class="button"/></td>
              </tr>
             </table>
             <table width="280" border="0" cellspacing="0" cellpadding="0">
              <tr align="left">
                <td> <STRONG>热门搜索词：</STRONG><a href="#"><font color="#FF0000">热卖新品</font></a> <a href="#">双肩包</a> <a href="#">DUDU</a> <a href="#">钱包</a>
                </td>
              </tr>
             </table>
            </td>
          </tr>
        </table>
        </div>
        <!--头部第二层结束-->
        <!--头部第三层开始-->
        <div id="header3">
        <div id="header3_d1">
        <ul id="MenuBar1" class="MenuBarHorizontal">
          <li><a class="MenuBarItemSubmenu" href="shouye2.html">首页</a>
        <ul>
          <li>当季热卖<br />
 <a href="#">春夏新款</a><a href="#">小包</a><a href="#"> 链条包</a><a href="#"> 流苏包</a><a href="#"> 小清新</a><a href="#"> 撞色包</a>
          </li>
          <li>款式<br />
 <a href="#">单肩包 </a><a href="#">斜挎包</a><a href="#"> 手提包</a><a href="#"> 单肩/斜跨两用包 </a><a href="#">手提/斜跨两用包</a><a href="#"> 双肩包 </a><a href="#">多用包 </a><a href="#">钱包 </a><a href="#">手包</a></li>
          <li>风格 <br />
<a href="#">优雅 </a><a href="#">OL </a><a href="#">潮流 </a><a href="#">休闲 </a><a href="#">甜美 </a><a href="#">简约</a><a href="#"> 复古</a></li>
          <li>价格<br />
 <a href="#">99元以下</a><a href="#"> 100-159元 </a><a href="#">160-199元</a><a href="#"> 200-299元 </a><a href="#">300-599元 </a><a href="#">600-999元 </a><a href="#">1000元以上</a></li>
        </ul>
      </li>
      <li><a  href="#">女包</a></li>
      
       <li><a class="MenuBarItemSubmenu" href="men.html">男包</a>
        <ul>
          <li>款式<br />
<a href="#">公文包</a><a href="#"> 用包</a><a href="#"> 手提/斜跨两用包 </a><a href="#">单肩/斜跨两用包</a><a href="#"> 钱包 </a><a href="#">手包</a></li>
          <li>风格<br />
 <a href="#">经典商务 </a><a href="#">舒适休闲 </a><a href="#">户外潮牌 </a><a href="#">时尚运动</a></li>
          <li>材质<br />
 <a href="#">牛皮</a><a href="#"> 帆布 </a><a href="#">PU </a><a href="#">牛津布</a></li>
          <li>价格<br />
 <a href="#">159元以下 </a><a href="#">160-199元 </a><a href="#">300-599元 </a><a href="#">600元以上</a></li>
        </ul>
      </li>
      <li><a class="MenuBarItemSubmenu" href="#">钱包手包</a>
        <ul>
          <li>钱包<br />
<a href="#"> 男款</a><a href="#"> 女款 </a><a href="#">短款钱包</a><a href="#"> 长款钱包</a></li>
          <li>手包<br />
 <a href="#">男款 </a><a href="#">女款 </a><a href="#">宴会包 </a><a href="#">随身小包</a></li>
         
        </ul>
      </li>
      <li><a class="MenuBarItemSubmenu" href="#">真皮包</a>
        <ul>
          <li>女包<br />
 <a href="#">单肩包 </a><a href="#">斜挎包 </a><a href="#">手提包</a><a href="#"> 单肩/斜跨两用包</a></li>
          <li>男包 <br />
<a href="#">公文包<br />
 </a><a href="#">用包</a><a href="#"> 手提/斜跨两用包 </a><a href="#">单肩/斜跨两用包</a></li>
          <li>钱包<br />
 <a href="#">长宽 </a><a href="#">中长款 </a><a href="#">短款</a><a href="#"> 两折</a><a href="#"> 三折</a></li>
          <li>其它<br />
 <a href="#">男款皮带 </a><a href="#">卡包</a></li>
        </ul>
      </li>
      <li><a class="MenuBarItemSubmenu" href="#">旅行包</a>
        <ul>
          <li>拉杆箱<br />
 <a href="#">拉杆箱 </a><a href="#">登山箱 </a><a href="#">防水布 </a><a href="#">PC+ABS</a></li>
          <li>旅行包<br />
<a href="#">旅行包 </a><a href="#">大容量</a></li>
          <li>其它 <br />
<a href="#">运动包 </a><a href="#">登山包 </a><a href="#">户外包</a></li>
        </ul>
      </li>
      <li><a class="MenuBarItemSubmenu" href="#">数码包</a>
        <ul>
          <li>电脑包<br />
<a href="#"> 手提 </a><a href="#">双肩 </a><a href="#">两用 </a><a href="#">10寸 </a><a href="#">12寸 </a><a href="#">14寸</a></li>
          <li>其它 <br />
<a href="#">相机包</a></li>
         </ul>
      </li>
     
    </ul>
    <script type="text/javascript">
    var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"<%=basePath%>/SpryAssets/SpryMenuBarDownHover.gif", imgRight:"<%=basePath%>/SpryAssets/SpryMenuBarRightHover.gif"});
    </script>
        </div>
        
        <script type="text/javascript">
         function on_1(){
		var a = document.getElementById("header_1");
		a.style.background="#f00";
		a.style.color="fff";
		}
	 function leave_1(){
		var a = document.getElementById("header_1");
		a.style.background="#fff";
		a.style.color="#373737";
		}
	function on_2(){
		var a = document.getElementById("header_2");
		a.style.background="#f00";
		a.style.color="fff";
		}
	 function leave_2(){
		var a = document.getElementById("header_2");
		a.style.background="#fff";
		a.style.color="#373737";
		}
	function on_3(){
		var a = document.getElementById("header_3");
		a.style.background="#f00";
		a.style.color="fff";
		}
	 function leave_3(){
		var a = document.getElementById("header_3");
		a.style.background="#fff";
		a.style.color="#373737";
		}
	function on_4(){
		var a = document.getElementById("header_4");
		a.style.background="#f00";
		a.style.color="fff";
		}
	 function leave_4(){
		var a = document.getElementById("header_4");
		a.style.background="#fff";
		a.style.color="#373737";
		}
	function on_5(){
		var a = document.getElementById("header_5");
		a.style.background="#f00";
		a.style.color="fff";
		}
	 function leave_5(){
		var a = document.getElementById("header_5");
		a.style.background="#fff";
		a.style.color="#373737";
		}
		</script>
        <a href="#"> 
        <div id="header3_d2">
        <table width="286" border="0" cellspacing="0" cellpadding="0" id="header3_tab1">
          <tr>
            <td width="48" align="center" id="header_1" onmouseover="on_1()" onmouseout="leave_1()">新品</td>
            <td width="52" align="center" id="header_2" onmouseover="on_2()" onmouseout="leave_2()">品牌</td>
            <td width="50" align="center" id="header_3" onmouseover="on_3()" onmouseout="leave_3()">促销</td>
            <td width="64" align="center" id="header_4" onmouseover="on_4()" onmouseout="leave_4()">风云榜</td>
            <td width="72" align="center" id="header_5" onmouseover="on_5()" onmouseout="leave_5()">选包中心</td>

          </tr>
        </table>
        </div>
        </a>
        </div>
       
        <!--头部第三层结束-->
        <!--头部第四层开始-->
        <div id="header4">
        <img src="<%=basePath%>/images/laba.gif" width="16" height="14" /> 公告:·<font color="#ED1C24">全场满99元免运费（支持货到付款，10天无条件退货款）</font>·<font color="#888888">手机麦包包，畅享移动购物新乐趣！</font>
        
        </div>
        <!--头部第四层结束-->
        <!--头部结束-->
<!--商品介绍开始-->
<div id="jieshao">
您所在的位置：麦包包 > [<s:property value="#session.brand.brandName" />]<s:property value="#session.goods.goodName" /> <s:property value="#session.color.color" />
<div id="jieshao_d2">
<!--左开始-->
<div id="jieshao_d2_left">
         
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td>
            <div id="div1">
          <div class="small_pic"> <span class="mark"></span> <span class="float_layer"></span> <img id="showpic" src="<%=basePath%>/images/<s:property value="#session.maxImg.goodsimgImg"/>"width="480" height="480"/> </div>
          <div class="big_pic">
          <img src="<%=basePath%>/images/<s:property value="#session.maxImg.goodsimgImg"/>" id="bigpic" width="960" height="960" />
          </div>
        </div>
            </td>
          </tr>
          <tr>
            <td ><br />
              <table width="480" border="0" cellspacing="0" cellpadding="0">
              <tr>
              	<s:iterator value="#session.listImg" id="tag">
                	<td><img src="<%=basePath%>/images/<s:property value="#tag.goodsimgImg"/>" width="60" height="60" alt="图片1" onclick="javascript:changePic(this);"/></td>
                </s:iterator>
<!--                 <td><img src="<%=basePath%>/images/02da.jpg" width="60" height="60" alt="图片2" onclick="javascript:changePic(this);" /></td> -->
<!--                 <td><img src="<%=basePath%>/images/03da.jpg" width="60" height="60" alt="图片3" onclick="javascript:changePic(this);"/></td> -->
<!--                 <td><img src="<%=basePath%>/images/04da.jpg" width="60" height="60" alt="图片4" onclick="javascript:changePic(this);"/></td> -->
<!--                 <td><img src="<%=basePath%>/images/05da.jpg" width="60" height="60" alt="图片5" onclick="javascript:changePic(this);"/></td> -->
<!--                 <td><img src="<%=basePath%>/images/06da.jpg" width="60" height="60" alt="图片6" onclick="javascript:changePic(this);"/></td> -->
              </tr>
            </table>
            </td>
            </tr>
          </table>
<div id="jieshao_d2_left_d3">
分享<img src="<%=basePath%>/images/logosina.gif" width="16" height="16" />
<img src="<%=basePath%>/images/logoqq.gif" width="16" height="16" />
<img src="<%=basePath%>/images/logoqqweibo.gif" width="16" height="16" />
<img src="<%=basePath%>/images/logobaidu.gif" width="16" height="16" />
<img src="<%=basePath%>/images/logotaobao.gif" width="16" height="16" />
<img src="<%=basePath%>/images/logokaixin.gif" width="16" height="16" />
<img src="<%=basePath%>/images/logorenren.gif" width="16" height="16" />
<img src="<%=basePath%>/images/logodouban.gif" width="16" height="16" />
<img src="<%=basePath%>/images/logobai.gif" width="16" height="16" />
</div>  
</div>
<!--左结束-->
<!--右开始-->
<div id="jieshao_d2_right">
<form action="/Minions/user/addGoods_checkUserGoods" method="post" id="form">
<input type="hidden" name="goodId" value="<s:property value="#session.goods.goodId" />" />
<input type="hidden" name="fengzi" id="fengzi" value="1"/>
<input type="hidden" name="cid" id="cid" value="<s:property value="#session.color.colorId" />"/>
<span id="jieshao_d2_right_s1"><b>[<s:property value="#session.brand.brandName" />]<s:property value="#session.goods.goodName" /> <s:property value="#session.color.color" /></b></span>
<table width="450" border="0" cellspacing="0" cellpadding="0" id="jieshao_d2_right_t1">
  <tr>
    <td width="210" height="29">市场价：￥<s><s:property value="#session.goods.goodMarketprice" /></s></td>
    <td width="240">编号：<s:property value="#session.goodsNumber" /></td>
  </tr>
  <tr>
    <td height="40"><font color="#333333">麦包价:</font><font color=red size="4">￥<s:property value="#session.goods.goodPrice" /></font></td>
    <td>可获麦豆：<font color="#F88F05"><b id="maidou">98</b></font>个</td>
  </tr>
</table>
<table width="450" border="0" cellspacing="0" cellpadding="0" id="jieshao_d2_right_t2">
  <tr>
    <td valign="top"><b>颜色：</b></td>
    <td>
    <s:iterator value="#session.goodsImg" id="tag">
    	<a href="javascript:Yanse('<s:property value="#tag.colors.color"/>',<s:property value="#tag.colors.colorId"/>)" ><img src="<%=basePath%>/images/<s:property value="#tag.goodsimgImg"/>" width="42" height="42" /></a>
    </s:iterator>
    </td>
  </tr>
  <tr>
    <td><b>数量：</b><input name="shuliangjian"  value="-" type="button"  id="shuliangjian" onclick="jian()"/> <span id="nnn">1</span><input name="shuliangjia" type="button"  value="+" id="shulangjia" onclick="jia()"/></td>
    <td>&nbsp;</td>
  </tr>
</table>
<span class="jieshao_d2_right_s2">配送至：有货，将从天津仓发货</span><br>
<span class="jieshao_d2_right_s2">消费保障：<img src="<%=basePath%>/images/bz_ico_1.jpg" width="30" height="19" /><img src="<%=basePath%>/images/bz_ico_2.png" width="30" height="19" /><img src="<%=basePath%>/images/bz_ico_4.png" width="30" height="19" /><img src="<%=basePath%>/images/bz_ico_5.png" width="30" height="19" /></span>
<div id="jieshao_d2_right_d1">
已选择：&nbsp;&nbsp;<span id="yi">1件</span>&nbsp;&nbsp; <span id="yyan"><s:property value="#session.color.color" /></span>  <input name="" type="button"  class="jieshao_d2_right_d1_b1" onclick="tijiao()" id="gouwuche1"/>  <input name="" type="button"  class="jieshao_d2_right_d1_b2"/>
</div>
</form>
<script language="JavaScript">
var pri = <s:property value="#session.goods.goodPrice" />;
var mai = document.getElementById("maidou");
var num = parseInt(pri/100, 10);
mai.innerHTML = num*14;
</script>
<script language="JavaScript">
function Yanse(color,id){
	var co = document.getElementById("yyan");
	co.innerHTML = color;
	var cc = document.getElementById("cid");
	cc.value=id;
}
</script>
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
	
function tijiao() {
	document.getElementById("form").submit();
}
</script>

<div id="jieshao_d2_right_d2">
上架时间：2012-6-11<br>
评分：<img src="<%=basePath%>/images/icon_star_5.gif" width="63" height="10" /><font color="#0099FF">(已有0人评论)</font>浏览：<font color="#F88F05"><b>280</b></font> 收藏：<font color="#F88F05"><b>4</b></font>次</div>
<div id="jieshao_d2_right_d3" align="center">
<font color="#f2585e"><b>0</b></font>人喜欢     0人不喜欢      先登陆再投票哦~<br>
<table width="450" border="0" cellspacing="0" cellpadding="0" id="jieshao_d2_right_d3_t1">
  <tr>
    <td width="100"> <font color="#f2585e"> <b>麦友印象：</b></font></td>
    <td align="left">时尚-欧美风-简约</td>
  </tr>
  <tr>
    <td rowspan="2">&nbsp;</td>
  </tr>
</table>

</div>


</div>
<!--右结束-->
</div>
<!--商品介绍结束-->
<!--其他信息开始-->
<div id="qita">
<!--左开始-->
<div id="qita_left">
<table width="195" border="0" cellspacing="0" cellpadding="0" id="qita_left_t1">
  <tr>
    <td class="qita_left_t1_td1"><b>所属品牌</b></td>
  </tr>
  <tr>
    <td class="qita_left_t1_td2" align="center"><img src="<%=basePath%>/images/<s:property value="#session.brand.brandImg" />" width="70" height="42" /><br /><br />
    
        <a href="#">进入<s:property value="#session.brand.brandName" />品牌>></a>
        </td>
  </tr>
  <tr>
    <td class="qita_left_t1_td1"><b>相关分类</b></td>
  </tr>
  <tr>
    <td class="qita_left_t1_td3" >
    	<table>
    		<tr>
    		<s:iterator value="#session.tagList" id="tag" status="num">
    			<td width="50"><a href="#"><s:property value="#tag.tagName"/></a></td>
    				<s:if test="#num.modulus(3)==0">
					</tr>
					<tr>
					</s:if>
        	</s:iterator>
    		</tr>
    	</table>
    </td>
  </tr>
</table>
<table width="195" border="0" cellspacing="0" cellpadding="0" id="qita_left_t2">
  <tr>
    <td colspan="2" class="qita_left_t2_td1"><b>相关商品</b></td>
    </tr>
  <tr>
    <td class="qita_left_t2_td2" align="center"><a href="#"><img src="<%=basePath%>/images/xiangguanshangpin1.gif" width="69" height="92" /></a></td>
    <td class="qita_left_t2_td2" align="center"><a href="#"><img src="<%=basePath%>/images/xiangguanshangpin2.gif" width="69" height="92" /></a></td>
  </tr>
  <tr>
    <td class="qita_left_t2_td2" align="center"><a href="#"><img src="<%=basePath%>/images/xiangguanshangpin3.gif" width="69" height="92" /></a></td>
    <td class="qita_left_t2_td2" align="center"><a href="#"><img src="<%=basePath%>/images/xiangguanshangpin4.gif" width="69" height="92" /></a></td>
  </tr>
</table>
<table width="195" border="0" cellspacing="0" cellpadding="0" id="qita_left_t3">
  <tr>
    <td class="qita_left_t3_td1"><b>您最近浏览的商品</b></td>
  </tr>
  <tr>
<!--   			<s:iterator value="#session.historyList" id="tag" status="num"> -->
<!--     			<td class="qita_left_t3_td2"><a href="#"><img src="<%=basePath%>/images/<s:property value="tag."/>" width="63" height="92" /></a></td> -->
<!--     				<s:if test="#num.modulus(2)==0"> -->
<!-- 					</tr> -->
<!-- 					<tr> -->
<!-- 					</s:if> -->
<!--         	</s:iterator> -->
    <td class="qita_left_t3_td2"><a href="#"><img src="<%=basePath%>/images/zuijinliulan.gif" width="63" height="92" /></a></td>
  </tr>
</table>
</div>
<!--左结束-->
<!--右开始-->
<div id="qita_right">
<table width="750" border="0" cellspacing="0" cellpadding="0">
  <tr>
   <td>
    <div id="TabbedPanels1" class="TabbedPanels">
      <ul class="TabbedPanelsTabGroup">
        <li class="TabbedPanelsTab" tabindex="0">商品展示</li>
        <li class="TabbedPanelsTab" tabindex="0">麦友晒包</li>
        <li class="TabbedPanelsTab" tabindex="0">评论详情</li>
        <li class="TabbedPanelsTab" tabindex="0">售前咨询</li>
        <li class="TabbedPanelsTab" tabindex="0">如何购买</li>
        <li class="TabbedPanelsTab" tabindex="0">售后服务</li>
      </ul>
  
<div class="TabbedPanelsContentGroup">
<s:property value="#session.goodsContent" escape="false"/>
<!--         <div class="TabbedPanelsContent"> -->
<!--         <div id="qita_right_down1"> -->
<!-- <table width="750" border="0" cellspacing="0" cellpadding="5" id="qita_right_down1_t1"> -->
<!--   <tr> -->
<!--     <td>性别：女</td> -->
<!--     <td>材质：牛皮</td> -->
<!--     <td>颜色系：桔色</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>使用方法：手提</td> -->
<!--     <td>款式：不定型</td> -->
<!--     <td>场合：宴会-聚会</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>风格：时尚-欧美风-简约</td> -->
<!--     <td>图案：纯色</td> -->
<!--     <td>流行元素：亮片</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>大小：中型包</td> -->
<!--     <td>尺寸：13寸</td> -->
<!--     <td>适合季节：四季</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>打开方式：铁铰</td> -->
<!--     <td>内部结构：内测拉链袋-手机袋</td> -->
<!--     <td>成品产地：中国</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>包体大小：31.0*23.0*9.0cm</td> -->
<!--     <td>重量：0.88kg</td> -->
<!--     <td>&nbsp;</td> -->
<!--   </tr> -->
<!-- </table> -->
<!-- <table width="600" border="0" cellspacing="0" cellpadding="0" id="qita_right_down1_t2"> -->
<!--   <tr> -->
<!--     <td><b>请注意：</b>包的颜色请选择确认后下单，系统按订单颜色发货，不接收留言选色！</td> -->
<!--   </tr> -->
<!-- </table> -->
<!-- <table width="750" border="0" cellspacing="0" cellpadding="0" id="qita_right_down1_t3"> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_01.jpg" width="740" height="308" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_02.jpg" width="740" height="428" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_03.jpg" width="740" height="479" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_04.jpg" width="740" height="288" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_05.jpg" width="740" height="347" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_06.jpg" width="740" height="289" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_07.jpg" width="740" height="346" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_08.jpg" width="740" height="289" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_09.jpg" width="740" height="345" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_10.jpg" width="740" height="345" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_11.jpg" width="740" height="345" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_12.jpg" width="740" height="345" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/740-01-01_13.jpg" width="740" height="286" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_01.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_02.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_03.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_04.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_05.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_06.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_07.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_08.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_09.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_10.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_11.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_12.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_13.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_14.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_15.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td align="center"><img src="<%=basePath%>/images/13040279_16.jpg" width="740" height="593" /></td> -->
<!--   </tr> -->
<!-- </table> -->
<!-- </div> -->
        
        
        
        
<!--         </div> -->
        <div class="TabbedPanelsContent"><div id="qita_right_down2">
<table width="750" border="0" cellspacing="0" cellpadding="0" id="qita_right_down2_t1">
  <tr>
    <td align="left" class="qita_right_down2_t1_td1">现在晒包即可获赠5元现金卷，更有机会获大奖！</td>
    <td align="right" class="qita_right_down2_t1_td1">我购买过这个商品，<a href="#">我要晒包>></a></td>
  </tr>
  <tr>
    <td colspan="2" align="center" class="qita_right_down2_t1_td2">还没有人来晒包，赶快来秀秀你的包包吧！</td>
    </tr>
</table>
</div>
</div>
        <div class="TabbedPanelsContent"><div id="qita_right_down3">
        <table width="450" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center">暂时还没有评论，写评论拿麦豆，买过它的麦友赶紧了，<a href="#">点击去写评论</a></td>
  </tr>
</table>

        
        
</div></div>
        <div class="TabbedPanelsContent"><div id="qita_right_down4">
<table width="750" border="0" cellspacing="0" cellpadding="0" id="qita_right_down4_t1">
  <tr>
    <td  align="left" class="qita_right_down4_t1_td1">咨询类型：<select name=""><option value="1" selected="selected">全部咨询</option></select></td>
    <td  align="right" class="qita_right_down4_t1_td1">如果购买过程中没有任何疑问，欢迎向我们咨询，<a href="#">我要咨询>></a></td>
  </tr>
  <tr>
    <td colspan="2">
            <table width="750" border="0" cellspacing="0" cellpadding="0" id="qita_right_down4_t2">
                  <tr>
                    <td align="center">目前还没有麦友咨询</td>
                  </tr>
                  <tr>
                    <td align="center">
                        <table width="728" border="1" cellspacing="0" cellpadding="0" id="qita_right_down4_t3">
                              <tr>
                                <td align="left" class="qita_right_down4_t3_td1"><b>我要咨询</b>（    如果购买过程中有任何疑问，欢迎向我们咨询）</td>
                              </tr>
                              <tr>
                                <td align="left" class="qita_right_down4_t3_td2">咨询类型：<form><input name="" type="radio" value="" />产品咨询
                                              <input name="" type="radio" value="" />活动咨询
                                              <input name="" type="radio" value="" />支付咨询
                                              <input name="" type="radio" value="" />配送快递咨询
                                              <input name="" type="radio" value="" />订单咨询
                                              <input name="" type="radio" value="" />售后咨询
                                              <input name="" type="radio" value="" />售前问题<br>
                                    咨询内容：<textarea name="" cols="80" rows="3" id="blogtext" onkeyup="checkLength(this);" onfocus="blogtextfocus();" onblur="blogtextblur();"></textarea> <br>                           
                                    <span id="tishi">还可以输入140个字</span>                                           
                                    <input name="" type="submit" value="" class="qita_right_down4_t3_td3"/></form></td>
                              </tr>
                        </table>

                    </td>
                  </tr>
            </table>
    </td>
    </tr>
</table>
</div></div>
        <div class="TabbedPanelsContent"><div id="qita_right_down5">
  <img src="<%=basePath%>/images/down5top-2.gif" width="748" height="232" border="0" usemap="#Map" />
  <map name="Map" id="Map">
    <area shape="rect" coords="126,166,200,179" href="#" />
  </map>
  <img src="<%=basePath%>/images/down5down.gif" width="748" height="591" border="0" usemap="#Map2" />
  <map name="Map2" id="Map2">
    <area shape="rect" coords="187,73,334,85" href="#" />
    <area shape="rect" coords="289,438,459,452" href="#" />
    <area shape="rect" coords="304,527,441,537" href="#" />
  </map>
</div></div>
        <div class="TabbedPanelsContent"><div id="qita_right_down6">
  <img src="<%=basePath%>/images/down6top.gif" width="748" height="284" />
  <img src="<%=basePath%>/images/down6down.gif" width="748" height="590" border="0" usemap="#Map3" />
  <map name="Map3" id="Map3">
    <area shape="rect" coords="166,351,251,364" href="#" />
  </map>
</div></div>
</div>
</div>
   </td> 
  </tr>
</table> 

<script type="text/javascript">
<!--
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
//-->
</script>



















<div id="qita_right_down99" align="right">
<input name="" type="button" onclick="gouwuche(gouwuche2)" id="gouwuche2"/>
</div>
</div>
<!--右结束-->
</div>
<!--其他信息结束-->
<!--footer 开始-->
        <div id="dh_bottom">
        <table width="960" cellspacing="0" cellpadding="0" id="dh_bottom_tb1">
          <tr>
            <td class="dh_bottom_td1">▲关于麦包包</td>
            <td class="dh_bottom_td1">▲新手指南</td>
            <td class="dh_bottom_td1">▲支付方式</td>
            <td class="dh_bottom_td1">▲配送方式</td>
            <td class="dh_bottom_td1">▲售后服务</td>
            <td class="dh_bottom_td1">▲更多信息</td>
            <td class="dh_bottom_td3">▲麦包包热线电话：</td>
          </tr>
          <tr>
            <td class="dh_bottom_td2"><a href="#">公司简介</a></td>
            <td class="dh_bottom_td2"><a href="#">新用户注册</a></td>
            <td class="dh_bottom_td2"><a href="#">货到付款</a></td>
            <td class="dh_bottom_td2"><a href="#">配送运费说明</a></td>
            <td class="dh_bottom_td2"><a href="#">退货政策</a></td>
            <td class="dh_bottom_td2"><a href="#">麦芽糖时尚网</a></td>
            <td rowspan="2" class="dh_bottom_td4">4006-528-528</td>
          </tr>
          <tr>
            <td class="dh_bottom_td2"><a href="#">联系我们</a></td>
            <td class="dh_bottom_td2"><a href="#">购物流程</a></td>
            <td class="dh_bottom_td2"><a href="#">在线支付</a></td>
            <td class="dh_bottom_td2"><a href="#">配送时效</a></td>
            <td class="dh_bottom_td2"><a href="#">如何办理退货</a></td>
            <td class="dh_bottom_td2"><a href="#">买包国际站</a></td>
            </tr>
          <tr class="dh_bottom_td2">
            <td class="dh_bottom_td2"><a href="#">诚聘英才</a></td>
            <td class="dh_bottom_td2"><a href="#">会员介绍</a></td>
            <td class="dh_bottom_td2"><a href="#">银行汇款</a></td>
            <td class="dh_bottom_td2"><a href="#">货到付款范围查询</a></td>
            <td class="dh_bottom_td2"><a href="#">包包保养法宝</a></td>
            <td class="dh_bottom_td2"><a href="#">官方博客</a></td>
            <td rowspan="2"class="dh_bottom_td5"><a href="visitor book.html"><img src="<%=basePath%>/images/liuyanban.gif" width="134" height="35" border="0"/></a></td>
          </tr>
          <tr class="dh_bottom_td2">
            <td class="dh_bottom_td2"><a href="#">品牌加盟</a></td>
            <td class="dh_bottom_td2"><a href="#">优惠券说明</a></td>
            <td class="dh_bottom_td2"><a href="#"></a></td>
            <td class="dh_bottom_td2"><a href="#"></a></td>
            <td class="dh_bottom_td2"><a href="#">常见问题</a></td>
            <td class="dh_bottom_td2"><a href="#">友情链接</a></td>
            </tr>
          <tr class="dh_bottom_td2">
            <td class="dh_bottom_td2"><a href="#">实体加盟</a></td>
            <td class="dh_bottom_td2"><a href="#">麦豆介绍</a></td>
            <td class="dh_bottom_td2"><a href="#"></a></td>
            <td class="dh_bottom_td2"><a href="#"></a></td>
            <td class="dh_bottom_td2"><a href="#">投诉建议</a></td>
            <td class="dh_bottom_td2"><a href="#"></a></td>
            <td class="dh_bottom_td1">&nbsp;</td>
          </tr>
        </table>
        <table width="960" border="0" cellspacing="0" cellpadding="0" id="dh_bottom_tb2">
          <tr>
            <td><a href="#"><img src="<%=basePath%>/images/dh_b_1.gif" width="205" height="40" border="0"/></a></td>
            <td><a href="#"><img src="<%=basePath%>/images/dh_b_2.gif" width="176" height="40" border="0"/></a></td>
            <td><a href="#"><img src="<%=basePath%>/images/dh_b_3.gif" width="180" height="40" border="0"/></a></td>
            <td><a href="#"><img src="<%=basePath%>/images/dh_b_4.gif" width="212" height="40" border="0"/></a></td>
            <td><a href="#"><img src="<%=basePath%>/images/dh_b_5.gif" width="187" height="40" border="0"/></a></td>
          </tr>
          <tr>
            <td colspan="5" id="dh_bottom_td21">2007-2012 Mbaobao All Rights Reserved.嘉兴麦宝科技信息有限公司 版权所有，禁止非法复制 经营编号：浙B2-20100425</td>
            </tr>
          <tr>
            <td colspan="5" id="dh_bottom_td22"><a href="#"><img src="<%=basePath%>/images/footer_logo_1.png" width="93" height="40" /></a>
            <a href="#"><img src="<%=basePath%>/images/footer_logo_2.png" width="114" height="40" /></a>
            <a href="#"><img src="<%=basePath%>/images/footer_logo_3.png" width="66" height="65" /></a>
            <a href="#"><img src="<%=basePath%>/images/footer_logo_4.png" width="102" height="65" /></a></td>
            </tr>
        </table>
        
        </div>
<!--footer 结束-->

</body>
</html>