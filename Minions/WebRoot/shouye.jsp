<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>麦包包官方网站 - 中国最大的时尚箱包在线商城，购物满99免运费，支持货到付款</title>
<link href="<%=basePath%>/styles/global.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/styles/shouye.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/styles/footer.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/styles/toubu.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/SpryAssets/wodemaibaobao.css" rel="stylesheet" type="text/css" />

<script src="<%=basePath%>/SpryAssets/wodemaibaobao.js" type="text/javascript"></script>
<script src="<%=basePath%>/SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script src="<%=basePath%>/SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>
<script src="<%=basePath%>/js/shouye.js" type="text/javascript"></script>
<script type="text/javascript">

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>



<script language="javascript">
window.onload = function (){
	
	marq();
}
var amount = 10;
var sto;
function marq(){
	var obj = document.getElementById("inner");
	if(amount==400){
		amount=10;
		}
	obj.style.top = -amount;
	amount+=10;
	sto = setTimeout("marq()",1000);
	
}
</script>

</head>

	<body onload="MM_preloadImages('<%=basePath%>/images/hotneirong1_1.jpg','<%=basePath%>/images/hotneirong2_1.gif','<%=basePath%>/images/hotneirong3_1.jpg','<%=basePath%>/images/hotneirong4_1.jpg')">
	<!--首页  顶部+头部  开始-->
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
                var MenuBar1 = new Spry.Widget.MenuBar("MenuBar2", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
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
        <!--头部第二层开始-->
        <div id="header2">
        <table width="960" border="0" cellspacing="0" cellpadding="0" id="header2_tab1">
          <tr>
            <td align="left"><img src="<%=basePath%>/images/logo4.png" width="304" height="39" /></td>
            <td class="header2_tab1_td2" height="86"><img src="<%=basePath%>/images/lzx.jpg" width="213" height="78" /></td>
            <td align="right">
             <table width="280" border="0" cellspacing="0" cellpadding="0" id="header2_tab2">
           
              <tr>
                <form action="findGoods/search_doSearchByWord" method="get">
                <td><img src="<%=basePath%>/images/fangdajing.gif" width="13" height="13" /></td>
                <td  align="left"><input name="SearchWord" type="text" value="年中庆" class="nianzhongqing"/></td>
                <td><input name="" type="submit" value="搜索" class="button"/></td>
                </form>
              </tr>
              
             </table>
             <table width="280" border="0" cellspacing="0" cellpadding="0">
              <tr align="left">
                <td> <STRONG>热门搜索词：</STRONG><a href="#"><font color="#FF0000">热卖新品</font></a> <a href="#">双肩包</a> <a href="#">DUDU</a> <a href="#">钱包</a>
                </td>
              </tr>
              <tr>
              <form action="findGoods/search_doSearchByPic"  enctype="multipart/form-data" method="post">
              <td>
              	图片搜索:<input type="file" size="10" name="searchpic"/> <input type="submit" value="搜索"/>
              </td>
              </form>
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
          <li><a  href="/Minions/findGoods/shouye_getBanners.action">首页</a></li>
          <li><a class="MenuBarItemSubmenu" href="nvbao.html">女包</a>
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
          <li><a class="MenuBarItemSubmenu" href="#">钱包手包</a>
            <ul>
              <li>钱包<br />
    <a href="#"> 男款</a><a href="#"> 女款 </a><a href="#">短款钱包</a><a href="#"> 长款钱包</a></li>
              <li>手包<br />
     <a href="#">男款 </a><a href="#">女款 </a><a href="#">宴会包 </a><a href="#">随身小包</a></li>
             
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
    var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
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
        <img src="<%=basePath%>/images/laba.gif" width="16" height="14" /> 公告:·<font color="#ED1C24"><s:property  value="#session.gonggao.shouyebannerContent"/></font>
        </div>
        <!--头部第四层结束-->
        <!--头部结束-->
	<!--首页  顶部+头部  结束-->

	<!--首页  广告1  开始-->
	<div id="banner1">
     <a href="#">
     <img src="<%=basePath%>/images/<s:property  value="#session.banner1.shouyebannerContent"/>" width="960" height="70" border="0" title="年中庆终极秒杀 2.7折起" />
     </a>
	</div>
 	<!--首页  广告1  结束-->
    <!--首页  广告2  开始-->
    <div id="banner2">
            <!--首页  广告2 左侧 开始-->
            <div id="banner2_left">
            
          
                <a target=_self href="javascript:goUrl()"> <span class="f14b">
                <script type="text/javascript">
                <!--			
                imgUrl1="<%=basePath%>/images/<s:property  value="#session.banner21.shouyebannerContent"/>";
                imgtext1=""
                imgLink1=escape("lilang.html");
                imgUrl2="<%=basePath%>/images/<s:property  value="#session.banner22.shouyebannerContent"/>";
                imgtext2=""
                imgLink2=escape("lilang.html");
                imgUrl3="<%=basePath%>/images/<s:property  value="#session.banner23.shouyebannerContent"/>";
                imgtext3=""
                imgLink3=escape("lilang.html");
                imgUrl4="<%=basePath%>/images/<s:property  value="#session.banner24.shouyebannerContent"/>";
                imgtext4=""
                imgLink4=escape("lilang.html");
                imgUrl5="<%=basePath%>/images/<s:property  value="#session.banner25.shouyebannerContent"/>";
                imgtext5=""
                imgLink5=escape("lilang.html");		
                 var focus_width=698
                 var focus_height=338
                 var text_height=0
                 var swf_height = focus_height+text_height		 
                 var pics=imgUrl1+"|"+imgUrl2+"|"+imgUrl3+"|"+imgUrl4+"|"+imgUrl5
                 var links=imgLink1+"|"+imgLink2+"|"+imgLink3+"|"+imgLink4+"|"+imgLink5
                 var texts=imgtext1+"|"+imgtext2+"|"+imgtext3+"|"+imgtext4+"|"+imgtext5		 
                 document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
                 document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="focus.swf"><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
                 document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
                 document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
                 document.write('<embed src="pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F0F0F0" quality="high" width="'+ focus_width +'" height="'+ focus_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');  document.write('</object>');
                -->
                </script>
                </span>
                </a>
        	</div>
        <!--首页  广告2 左侧 结束-->
        <!--首页  广告2 右侧 开始-->
        <div id="banner2_right">
         	<!--首页  广告2 右侧 上部分 开始-->
        	<div id="banner2_right_1">
        	  <div id="TabbedPanels1" class="TabbedPanels">
        	    <ul class="TabbedPanelsTabGroup">
        	      <li class="TabbedPanelsTab" tabindex="0">热门活动</li>
        	      <li class="TabbedPanelsTab" tabindex="0">最新动态</li>
      	      </ul>
        	    <div class="TabbedPanelsContentGroup">
        	      <div class="TabbedPanelsContent">
                  <table class="hotneirong" border="0" cellpadding="0" cellspacing="0" width="235">
                       <tr>
                        <td height="25"><a href="#">◆<s:property  value="#session.hotact1.shouyebannerContent"/></a>
                        </td>
                       </tr>
                       <tr>
                        <td height="25"><a href="#">◆<s:property  value="#session.hotact2.shouyebannerContent"/></a>
                        </td>
                       </tr>
                       <tr>
                        <td height="25"><a href="#">◆<s:property  value="#session.hotact3.shouyebannerContent"/></a>
                        </td>
                       </tr>
                       <tr>
                        <td height="25"><a href="#">◆ <s:property  value="#session.hotact4.shouyebannerContent"/></a>
                        </td>
                       </tr>
                  </table>
                  </div>
        	      <div class="TabbedPanelsContent">
              		<table class="hotneirong" border="0" cellpadding="0" cellspacing="0"  width="235">
                       <tr>
                        <td height="25"><a href="#">◆ <s:property  value="#session.situation1.shouyebannerContent"/></a>
                        </td>
                       </tr>
                       <tr>
                        <td height="25"><a href="#">◆ <s:property  value="#session.situation2.shouyebannerContent"/></a>
                        </td>
                       </tr>
                       <tr>
                        <td height="25"><a href="#">◆ <s:property  value="#session.situation3.shouyebannerContent"/></a>
                        </td>
                       </tr>
                       <tr>
                        <td height="25"><a href="#">◆ <s:property  value="#session.situation4.shouyebannerContent"/></a>
                        </td>
                       </tr>
                  </table>
                  
                  
                  </div>
      	      </div>
      	    </div>
        	</div>
            <!--首页  广告2 右侧 上部分 结束-->
         	<!--首页  广告2 右侧 下部分 开始-->
       	  <div id="banner2_right_2">
            	<!--<div id="banner2_box1">
                </div>
                <div id="banner2_box2">
                </div>
                <div id="banner2_box3">
                </div>
                <div id="banner2_box4">
                </div>-->
          <img src="<%=basePath%>/images/banner_box.png" width="248" height="188" border="0" usemap="#Map" />
          <map name="Map" id="Map">
            <area shape="rect" coords="7,5,121,89" href="#" />
            <area shape="rect" coords="132,4,239,89" href="#" />
            <area shape="rect" coords="7,97,117,179" href="#" />
            <area shape="rect" coords="130,98,238,180" href="#" />
          </map>
		</div>
            <!--首页  广告2 右侧 下部分 结束-->
        </div>
        <!--首页  广告2 右侧 结束-->
    </div>
    <!--首页  广告2  结束-->
    <!--首页  热门分类  开始-->
    <div id="hotpartition">
    	<!--首页  热门分类 左侧 开始-->
    	<div id="hotpartition_left">
        	<!--首页  热门分类 左侧 标题 开始-->
        	<div id="hotpartition_left_biaoti">
                <table width="130" border="0" cellspacing="0" cellpadding="0"  height="38px">
                  <tr>
                    <td width="20px" class="hot_floor">■</td>
                    <td width="110px" class="hot_floor_name">热门分类</td>
                  </tr>
                </table>
            </div>
            <!--首页  热门分类 左侧 标题 结束-->
            <!--首页  热门分类 左侧 内容 开始-->
            	<div id="hotpartition_left_neirong">
                	<table width="678" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="3" class="hotpic"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('hotneirong1','','<%=basePath%>/images/hotneirong1_1.jpg',1)"><img src="<%=basePath%>/images/hotneirong1.gif" name="hotneirong1" width="68" height="80" border="0" id="hotneirong1" /></a></td>
                        <td class="hotneirong">
                        <a href="#">单肩包</a>
                        <a href="#">手提包</a>
                        <a href="#">双肩包</a>
                        <a href="#">单肩/斜挎两用包</a>
                        </td>
                        <td rowspan="3" class="hotpic"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image130','','<%=basePath%>/images/hotneirong2_1.jpg',1)"><img src="<%=basePath%>/images/hotneirong2.gif" name="hotneirong2" width="68" height="80" border="0" id="Image130" /></a></td>
                        <td class="hotneirong">
                        <a href="#">手提包</a> 
                        <a href="#">钱包</a>
                        <a href="#">单肩包</a> 
                        <a href="#">腰包</a>
                        <a href="#">斜挎包</a>
                        </td>
                      </tr>
                      <tr>
                        <td class="hotneirong">
                        <a href="#">手提/斜跨两用包</a>
                        <a href="#">手拿包</a>
                        <a href="#">化妆包</a>
                        <a href="#">钱包</a></td>
                        <td class="hotneirong">
                        <a href="#">手提/斜跨两用包</a> 
                        <a href="#">双肩包</a> 
                        <a href="#">牛皮公文包</a>
                        </td>
                      </tr>
                      <tr>
                        <td class="hotneirong">
                        <a href="#">斜挎包</a>
                        <a href="#">牛皮包</a>
                        <a href="#">PU包</a>
                        <a href="#">帆布包</a>
                        </td>
                        <td class="hotneirong">
                        <a href="#">经典商务</a> 
                        <a href="#">潮流个性</a> 
                        <a href="#">休闲随意</a> 
                        <a href="#">时尚运动</a>
                        </td>
                      </tr>
                      <tr>
                      <tr>
                      <td colspan="6" height="10px;"></td>
                      </tr>
                        <td rowspan="3" class="hotpic"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('hotneirong3','','<%=basePath%>/images/hotneirong3_1.jpg',1)"><img src="<%=basePath%>/images/hotneirong3.gif" name="hotneirong3" width="68" height="80" border="0" id="hotneirong3" /></a></td>
                        <td class="hotneirong">
                        <a href="#">拉杆箱</a> 
                        <a href="#">登山包</a> 
                        <a href="#">旅行包</a> 
                        <a href="#">儿童书包</a>
                        </td>
                        <td rowspan="3" class="hotpic"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('hotneirong4','','<%=basePath%>/images/hotneirong4_1.jpg',1)"><img src="<%=basePath%>/images/hotneirong4.gif" name="hotneirong4" width="68" height="80" border="0" id="hotneirong4" /></a></td>
                        <td class="hotneirong">
                        <a href="#">豹纹包</a> 
                        <a href="#">水桶包</a> 
                        <a href="#">鳄鱼纹</a> 
                        <a href="#">流苏包</a> 
                        <a href="#">编织包</a>
                        </td>
                      </tr>
                      <tr>
                        <td class="hotneirong">
                        <a href="#">电脑包</a> 
                        <a href="#">相机包</a> 
                        <a href="#">运动包</a> 
                        <a href="#">摄影包</a>
                        </td>
                        <td class="hotneirong">
                        <a href="#">复古包</a> 
                        <a href="#">邮差包</a> 
                        <a href="#">撞色包</a> 
                        <a href="#">新娘包</a> 
                        <a href="#">橙色</a>
                        </td>
                      </tr>
                      <tr>
                        <td class="hotneirong">
                        <a href="#">宴会包</a> 
                        <a href="#">配饰</a> 
                        <a href="#">皮带</a>
                        </td>
                        <td class="hotneirong">
                        <a href="#">丝巾包</a> 
                        <a href="#">糖果色包</a> 
                        <a href="#">蝴蝶结</a> 
                        <a href="#">褶皱</a>
                        </td>
                      </tr>
                </table>
                </div>
            <!--首页  热门分类 左侧 内容 结束-->
            
        </div>
        <!--首页  热门分类 左侧 结束-->
        <!--首页  热门分类 右侧 开始-->
        <div id="hotpartition_right">
         <a href="/Minions/getGoodsInfo/getGoodsInfo_getGoods.action?goodId=7&&colorId=2">
         <img src="<%=basePath%>/images/hotright.jpg" width="248" height="238"  title="[阿尔法]楚楚佳人精致细节" border="0"/>
         </a>
      	</div>
        <!--首页  热门分类 右侧 结束-->
    </div>
    <!--首页  热门分类  结束-->
    <!--首页  广告3  开始-->
        <div id="banner3"> 
        <a href="#">
        <img src="<%=basePath%>/images/banner3.jpg" width="960" height="70" border="0" title="积分专场 1元起超值换购" />
        </a>
        </div>
    <!--首页  广告3  结束-->
    <!--首页  1F  开始-->
        <!--首页  1F楼层导航  开始-->
        <div class="floor_div">
            <a href="#">
            <span class="floor">1F</span>
            <span class="floor_name">人气新品</span>
            </a>
            <span class="floor_more floor_gengduo"><a href="#">更多》</a>
            
            </span>
        </div>
        <!--首页  1F楼层导航  结束-->
        <!--首页  1F楼层内容  开始-->
        <div id="floor1">
       	  <div id="floor1_left"> 
          <a href="#">
          <img src="<%=basePath%>/images/<s:property  value="#session.lst1f1.shouyebannerContent"/>" width="295" height="490"  border="0" title="浪美翡冷翠系列简约时尚！新品119期！"/>
          </a>
          </div>
          <div id="floor1_main"> 
          	<a href="#"><img src="<%=basePath%>/images/<s:property  value="#session.lst1f2.shouyebannerContent"/>" width="228" height="141"  title="[飞扬空间]清新学院系列复古学院双肩/斜挎包"/></a><a href="#"><img src="<%=basePath%>/images/<s:property  value="#session.lst1f3.shouyebannerContent"/>" width="228" height="141" title="[浪美]穿针引线系列手拎单肩包" /></a><a href="#"><img src="<%=basePath%>/images/<s:property  value="#session.lst1f4.shouyebannerContent"/>" width="228" height="141" title="[艾斯达]简约休闲时尚魅力斜挎包" /></a><a href="#"><img src="<%=basePath%>/images/<s:property  value="#session.lst1f5.shouyebannerContent"/>" width="228" height="141" title="[梵贝斯]帅气朋克风单肩斜挎包" /></a><a href="#"><img src="<%=basePath%>/images/<s:property  value="#session.lst1f6.shouyebannerContent"/>" width="151" height="205"  title="[浪美]曼妙时光系列单肩包"/></a><a href="#"><img src="<%=basePath%>/images/<s:property  value="#session.lst1f7.shouyebannerContent"/>" width="151" height="205"  title="[梵贝斯]不莱梅音樂家系列-素雅大方气质单肩包 卡其色"/></a><a href="#"><img src="<%=basePath%>/images/<s:property  value="#session.lst1f8.shouyebannerContent"/>" width="151" height="205" title="[阿尔法·阿蒂斯特]摩登迷情系列牛皮配料单肩包 啡/红" /></a>
            </div>
            <div id="floor1_right"> 
            <a href="#">
            <img src="<%=basePath%>/images/<s:property  value="#session.lst1f9.shouyebannerContent"/>" width="197" height="240" border="0" title="[浪美]交错"/>
            </a>

            <a href="#">
            <img src="<%=basePath%>/images/<s:property  value="#session.lst1f10.shouyebannerContent"/>" width="197" height="245"  border="0" title="[希夏邦马]银辉都市系列双肩包"/>
            </a>
          </div>
        </div>
        <!--首页  1F楼层内容  结束-->
    <!--首页  1F  结束-->
    <!--首页  2F  开始-->
    	<!--首页  2F楼层导航  开始-->
		 <div class="floor_div">
        <a href="#">
        <span class="floor">2F</span>
        <span class="floor_name">热门品牌</span>
        </a>
        <span class="floor_more floor_gengduo"><a href="#">更多品牌》</a></span>
    	</div>
        <!--首页  2F楼层导航  结束-->
        <!--首页  2F楼层内容  开始-->
       		<!--首页  2F楼层内容 图片部分 开始-->
            <div id="floor2_tupian" style="filter:alpha(opacity=100)">
			 <table cellpadding="0" cellspacing="0" border="0" id="img_tb">
                <tr>
                    <td><a href="#"><img src="<%=basePath%>/images/floor2_1.jpg" width="240" height="366" title="DUDU 源自意大利的真皮风尚" style="filter:alpha(opacity=85)" onmouseover="moveon()" onmouseout="moveout()"
             /></a>
                    </td>
                    <td><a href="#"><img src="<%=basePath%>/images/floor2_2.jpg" width="480" height="183"  title="浪美 自由行走间的风尚标"  style="filter:alpha(opacity=85)"
             onmouseover="moveon()" onmouseout="moveout()"/></a><a href="#"><img src="<%=basePath%>/images/floor2_3.jpg" width="240" height="183" title="戈尔本 成就男士商务之旅" style="filter:alpha(opacity=85)"
             onmouseover="moveon()" onmouseout="moveout()"/></a><a href="#"><img src="<%=basePath%>/images/floor2_4jpg.jpg" width="240" height="183" title="卓妮尔 当优雅与摩登不期而遇/卓妮尔"  style="filter:alpha(opacity=85)"
             onmouseover="moveon()" onmouseout="moveout()"/></a><a href="#"><img src="<%=basePath%>/images/floor2_5.jpg" width="240" height="183"  title="阿尔法·阿蒂斯特 经时之作 尚流典藏/阿尔法·阿蒂斯特"  style="filter:alpha(opacity=85)"
            onmouseover="moveon()" onmouseout="moveout()"/></a><a href="#"><img src="<%=basePath%>/images/floor2_6.jpg" width="240" height="183"  title="希夏邦马 运动与旅行的完美结合"  style="filter:alpha(opacity=85)"
            onmouseover="moveon()" onmouseout="moveout()"/></a>
                    </td>
                </tr>
              </table>
            </div>
            <!--首页  2F楼层内容 图片部分 结束-->
            <!--首页  2F楼层内容 logo部分 开始-->
           	 <div id="floor2_logo">
                <table border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="you xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo11','','<%=basePath%>/images/logo_111.gif',0)"><img src="<%=basePath%>/images/logo_11.jpg" name="logo11" width="135" height="36" border="0" id="logo11" /></a></td>
                    <td class="you xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo12','','<%=basePath%>/images/logo_121.gif',0)"><img src="<%=basePath%>/images/logo_12.jpg" name="logo12" width="138" height="36" border="0" id="logo12" /></a></td>
                    <td class="you xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo13','','<%=basePath%>/images/logo_131.gif',0)"><img src="<%=basePath%>/images/logo_13.jpg" name="logo13" width="138" height="36" border="0" id="logo13" /></a></td>
                    <td class="you xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo14','','<%=basePath%>/images/logo_141.gif',0)"><img src="<%=basePath%>/images/logo_14.jpg" name="logo14" width="138" height="36" border="0" id="logo14" /></a></td>
                    <td class="you xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo15','','<%=basePath%>/images/logo_151.gif',0)"><img src="<%=basePath%>/images/logo_15.jpg" name="logo15" width="138" height="36" border="0" id="logo15" /></a></td>
                    <td class="you xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo16','','<%=basePath%>/images/logo_161.gif',0)"><img src="<%=basePath%>/images/logo_16.jpg" name="logo16" width="138" height="36" border="0" id="logo16" /></a></td>
                    <td class="xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo17','','<%=basePath%>/images/logo_171.gif',0)"><img src="<%=basePath%>/images/logo_17.jpg" name="logo17" width="129" height="36" border="0" id="logo17" /></a></td>
                  </tr>
                  <tr>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo21','','<%=basePath%>/images/logo_211.gif',0)"><img src="<%=basePath%>/images/logo_21.jpg" name="logo21" width="135" height="36" border="0" id="logo21" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo22','','<%=basePath%>/images/logo_221.gif',0)"><img src="<%=basePath%>/images/logo_22.jpg" name="logo22" width="138" height="36" border="0" id="logo22" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo23','','<%=basePath%>/images/logo_231.gif',0)"><img src="<%=basePath%>/images/logo_23.jpg" name="logo23" width="138" height="36" border="0" id="logo23" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo24','','<%=basePath%>/images/logo_241.gif',0)"><img src="<%=basePath%>/images/logo_24.jpg" name="logo24" width="138" height="36" border="0" id="logo24" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo25','','<%=basePath%>/images/logo_251.gif',0)"><img src="<%=basePath%>/images/logo_25.jpg" name="logo25" width="138" height="36" border="0" id="logo25" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo26','','<%=basePath%>/images/logo_261.gif',0)"><img src="<%=basePath%>/images/logo_26.jpg" name="logo26" width="138" height="36" border="0" id="logo26" /></a></td>
                    <td class="xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo27','','<%=basePath%>/images/logo_271.gif',0)"><img src="<%=basePath%>/images/logo_27.jpg" name="logo27" width="129" height="36" border="0" id="logo27" /></a></td>
                  </tr>
                  <tr>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo31','','<%=basePath%>/images/logo_311.gif',0)"><img src="<%=basePath%>/images/logo_31.jpg" name="logo31" width="135" height="36" border="0" id="logo31" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo32','','<%=basePath%>/images/logo_321.gif',0)"><img src="<%=basePath%>/images/logo_32.jpg" name="logo32" width="138" height="36" border="0" id="logo32" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo33','','<%=basePath%>/images/logo_331.gif',0)"><img src="<%=basePath%>/images/logo_33.jpg" name="logo33" width="138" height="36" border="0" id="logo33" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo34','','<%=basePath%>/images/logo_341.gif',0)"><img src="<%=basePath%>/images/logo_34.jpg" name="logo34" width="138" height="36" border="0" id="logo34" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo35','','<%=basePath%>/images/logo_351.gif',0)"><img src="<%=basePath%>/images/logo_35.jpg" name="logo35" width="138" height="36" border="0" id="logo35" /></a></td>
                    <td class="xia you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo36','','<%=basePath%>/images/logo_361.gif',0)"><img src="<%=basePath%>/images/logo_36.jpg" name="logo36" width="138" height="36" border="0" id="logo36" /></a></td>
                    <td class="xia"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo37','','<%=basePath%>/images/logo_371.gif',0)"><img src="<%=basePath%>/images/logo_37.jpg" name="logo37" width="129" height="36" border="0" id="logo37" /></a></td>
                  </tr>
                  <tr>
                  	<td><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo41','','<%=basePath%>/images/logo_411.gif',0)"><img src="<%=basePath%>/images/logo_41.jpg" name="logo41" width="135" height="36" border="0" id="logo41" /></a></td>
                    <td class="you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo42','','<%=basePath%>/images/logo_421.gif',0)"><img src="<%=basePath%>/images/logo_42.jpg" name="logo42" width="138" height="36" border="0" id="logo42" /></a></td>
                    <td class="you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo43','','<%=basePath%>/images/logo_431.gif',0)"><img src="<%=basePath%>/images/logo_43.jpg" name="logo43" width="138" height="36" border="0" id="logo43" /></a></td>
                    <td class="you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo44','','<%=basePath%>/images/logo_441.gif',0)"><img src="<%=basePath%>/images/logo_44.jpg" name="logo44" width="138" height="36" border="0" id="logo44" /></a></td>
                    <td class="you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo45','','<%=basePath%>/images/logo_451.gif',0)"><img src="<%=basePath%>/images/logo_45.jpg" name="logo45" width="138" height="36" border="0" id="logo45" /></a></td>
                    <td class="you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo46','','<%=basePath%>/images/logo_461.gif',0)"><img src="<%=basePath%>/images/logo_46.jpg" name="logo46" width="138" height="36" border="0" id="logo46" /></a></td>
                    <td class="you"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('logo47','','<%=basePath%>/images/logo_471.gif',0)"><img src="<%=basePath%>/images/logo_47.jpg" name="logo47" width="129" height="36" border="0" id="logo47" /></a></td>
                  </tr>
                </table>
			 </div>
			<!--首页  2F楼层内容 logo部分 结束-->
            <!--首页  2F楼层内容 广告 开始-->
            <div id="floor2_banner"> 
            <a href="#"><img src="<%=basePath%>/images/floor2_banner.jpg" width="960" height="69"  border="0"/></a>
            </div>
            <!--首页  2F楼层内容 广告 结束-->
		<!--首页  2F楼层内容  结束-->
	<!--首页  2F  结束-->
    <!--首页  3F  开始-->
    	<!--首页  3F楼层导航  开始-->
		<div class="floor_div">
        <a href="nvbao.html">
        <span class="floor">3F</span>
        <span class="floor_name">女包</span>
        </a>
        <span class="floor_more">
        <a href="#">春夏新款</a> <img src="<%=basePath%>/images/fengexian.gif" width="1" height="12" />
        <a href="#">小清新</a> <img src="<%=basePath%>/images/fengexian.gif" width="1" height="12" />
        <a href="#">橙色包</a> <img src="<%=basePath%>/images/fengexian.gif" width="1" height="12" />
        <a href="#">糖果色包</a> <img src="<%=basePath%>/images/fengexian.gif" width="1" height="12" />
        <a href="#">流苏包</a> <img src="<%=basePath%>/images/fengexian.gif" width="1" height="12" />
        <span class="floor_gengduo"><a href="#">更多品牌》</a></span></span>
    	</div>
        <!--首页  3F楼层导航  结束-->
        <!--首页  3F楼层 图片部分 开始-->
		<div id="floor3_tupian">
        	<div id="floor3_left"> 
            <a href="#" title="哈根达斯情节"><img src="<%=basePath%>/images/floor3_tupianleft.jpg" width="280" height="330" />
            </a>
    		</div>
            <div id="floor3_main">
           	    <a target=_self href="javascript:goUrl()"> <span class="f14b">
				<script type="text/javascript">
                <!--			
                imgUrl1="<%=basePath%>/images/floor3_maintupian1.jpg";
                imgtext1=""
                imgLink1=escape("lilang.html");
                imgUrl2="<%=basePath%>/images/floor3_maintupian2.jpg";
                imgtext2=""
                imgLink2=escape("lilang.html");
                imgUrl3="<%=basePath%>/images/floor3_maintupian3.jpg";
                imgtext3=""
                imgLink3=escape("lilang.html");
        
                 var focus_width=465
                 var focus_height=330
                 var text_height=0
                 var swf_height = focus_height+text_height		 
                 var pics=imgUrl1+"|"+imgUrl2+"|"+imgUrl3
                 var links=imgLink1+"|"+imgLink2+"|"+imgLink3
                 var texts=imgtext1+"|"+imgtext2+"|"+imgtext3 
                 document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
                 document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="focus.swf"><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
                 document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
                 document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
                 document.write('<embed src="pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F0F0F0" quality="high" width="'+ focus_width +'" height="'+ focus_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');  document.write('</object>');
                -->
				</script>
				</span>
   				 </a>
            </div>
            <div id="floor3_right">
                <table  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor3_right11.gif" width="66" height="82" /></a></td>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor3_right12.jpg" width="66" height="82" /></a></td>
                    <td class="xia"><a href="#"><img src="<%=basePath%>/images/floor3_right13.gif" width="66" height="82" /></a></td>
                  </tr>
                  <tr>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor3_right21.gif" width="66" height="82" /></a></td>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor3_right22.gif" width="66" height="82" /></a></td>
                    <td class="xia"><a href="#"><img src="<%=basePath%>/images/floor3_right23.gif" width="66" height="82" /></a></td>
                  </tr>
                  <tr>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor3_right31.gif" width="66" height="82" /></a></td>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor3_right32.gif" width="66" height="82" /></a></td>
                    <td class="xia"><a href="#"><img src="<%=basePath%>/images/floor3_right33.gif" width="66" height="82" /></a></td>
                  </tr>
                  <tr>
                    <td class="you"><a href="#"><img src="<%=basePath%>/images/floor3_right41.gif" width="66" height="82" /></a></td>
                    <td class="you"><a href="#"><img src="<%=basePath%>/images/floor3_right42.gif" width="66" height="82" /></a></td>
                    <td><a href="#"><img src="<%=basePath%>/images/floor3_right43.gif" width="66" height="82" /></a></td>
                  </tr>
                </table>
			</div>
        
        </div>
        <!--首页  3F楼层 图片部分 结束-->
        <!--首页  3F楼层 商品部分 开始-->
        <div id="floor3_gooods">
            <table width="960" border="0" cellspacing="0" cellpadding="0">
            	
            	<tr>
					<s:iterator value="#session.girlGoods" id="good" status="number">
				      
				        <td class="goods">
					      <table>
						        <tr>
						        <td colspan="2" class="goods_paddingright goods_paddingtop">
						         <s:iterator value="#good.goodsimgs" id="goodsimgs" status="num" >
		      					  <s:if test="#num.count==1">
				                <a href="#"><img src="<%=basePath%>/images/<s:property  value="#goodsimgs.goodsimgImg"/>" width="174" height="174"  title="[JAMIE MOORE]AMY TOSCANA GROUP系列牛皮手提/斜挎包 银灰色" /></a>
				                </s:if>
		     				   </s:iterator>
				                </td>
						       
						        </tr>
						        
						        <tr>
						        	<td class="goods_miaoshu"><s:property  value="#good.goodName"/> <br /> <span class="goods_miaoshu">麦包价:</span>
				                <span class="goods_price">￥<s:property  value="#good.goodPrice"/></span></b></font></td>
						        </tr>
					       </table>
				        </td>
				       
				      	<s:if test="#number.modulus(5)==0">
							</tr>
							<tr>
						</s:if>
						
						
					 </s:iterator>   
         
         </tr>
        
            
            
            
            
            
           
            </table>
		</div>
        <!--首页  3F楼层 商品部分 结束-->
	<!--首页  3F  结束-->
    <!--首页  4F  开始-->
    	<!--首页  4F楼层导航  开始-->
        <div class="floor_div">
        <a href="men.html">
        <span class="floor">4F</span>
        <span class="floor_name">男包</span>
        </a>
        <span class="floor_more">
        <a href="#">经典商务</a> <img src="<%=basePath%>/images/fengexian.gif" width="1" height="12" />
        <a href="#">休闲随意</a> <img src="<%=basePath%>/images/fengexian.gif" width="1" height="12" />
        <a href="#">男士钱包</a> <img src="<%=basePath%>/images/fengexian.gif" width="1" height="12" />
        <span class="floor_gengduo"><a href="#">更多》</a>
        </span>
        </span>
    	</div>
        <!--首页  4F楼层导航  结束-->
        <!--首页  4F楼层 图片部分 开始-->
        <div id="floor4_tupian">
        	<div id="floor4_left"> 
            <a href="#" title="双肩时代"><img src="<%=basePath%>/images/floor4_tupianleft.jpg" width="280" height="330" />
            </a>
    		</div>
            
            <div id="floor4_main">
           	    <a target=_self href="javascript:goUrl()"> <span class="f14b">
				<script type="text/javascript">
                <!--			
                imgUrl1="<%=basePath%>/images/floor4_maintupian1.jpg";
                imgtext1=""
                imgLink1=escape("lilang.html");
                imgUrl2="<%=basePath%>/images/floor4_maintupian2.jpg";
                imgtext2=""
                imgLink2=escape("lilang.html");
                imgUrl3="<%=basePath%>/images/floor4_maintupian3.jpg";
                imgtext3=""
                imgLink3=escape("lilang.html");
        
                 var focus_width=465
                 var focus_height=330
                 var text_height=0
                 var swf_height = focus_height+text_height		 
                 var pics=imgUrl1+"|"+imgUrl2+"|"+imgUrl3
                 var links=imgLink1+"|"+imgLink2+"|"+imgLink3
                 var texts=imgtext1+"|"+imgtext2+"|"+imgtext3 
                 document.write('<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0" width="'+ focus_width +'" height="'+ swf_height +'">');
                 document.write('<param name="allowScriptAccess" value="sameDomain"><param name="movie" value="focus.swf"><param name="quality" value="high"><param name="bgcolor" value="#F0F0F0">');
                 document.write('<param name="menu" value="false"><param name=wmode value="opaque">');
                 document.write('<param name="FlashVars" value="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'">');
                 document.write('<embed src="pixviewer.swf" wmode="opaque" FlashVars="pics='+pics+'&links='+links+'&texts='+texts+'&borderwidth='+focus_width+'&borderheight='+focus_height+'&textheight='+text_height+'" menu="false" bgcolor="#F0F0F0" quality="high" width="'+ focus_width +'" height="'+ focus_height +'" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />');  document.write('</object>');
                -->
				</script>
				</span>
   				 </a>
            </div>
            
            <div id="floor4_right">
                <table  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor4_right11.gif" width="66" height="82" /></a></td>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor4_right12.gif" width="66" height="82" /></a></td>
                    <td class="xia"><a href="#"><img src="<%=basePath%>/images/floor4_right13.jpg" width="66" height="82" /></a></td>
                  </tr>
                  <tr>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor4_right21.gif" width="66" height="82" /></a></td>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor4_right22.gif" width="66" height="82" /></a></td>
                    <td class="xia"><a href="#"><img src="<%=basePath%>/images/floor4_right23.gif" width="66" height="82" /></a></td>
                  </tr>
                  <tr>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor4_right31.gif" width="66" height="82" /></a></td>
                    <td class="xia you"><a href="#"><img src="<%=basePath%>/images/floor4_right32.gif" width="66" height="82" /></a></td>
                    <td class="xia"><a href="#"><img src="<%=basePath%>/images/floor4_right33.gif" width="66" height="82" /></a></td>
                  </tr>
                  <tr>
                    <td class="you"><a href="#"><img src="<%=basePath%>/images/floor4_right41.gif" width="66" height="82" /></a></td>
                    <td class="you"><a href="#"><img src="<%=basePath%>/images/floor4_right42.gif" width="66" height="82" /></a></td>
                    <td><a href="#"><img src="<%=basePath%>/images/floor4_right43.gif" width="66" height="82" /></a></td>
                  </tr>
                </table>
			</div>
        </div>
        <!--首页  4F楼层 图片部分 结束-->
        <!--首页  4F楼层 商品部分 开始-->
        <div id="floor4_gooods">
            <table width="960" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td colspan="2" class="goods_paddingright goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods11.jpg" width="174" height="174"  title="[戈尔本]睿智风采系列时尚牛皮两用包 黑色" /></a>
                </td>
                <td colspan="2" class="goods_paddingright goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods12.jpg" width="174" height="174"  title="[戈尔本]时代之潮系列牛皮手提/斜挎电脑包 黑色"/></a></td>
                <td colspan="2" class="goods_paddingright goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods13.jpg" width="174" height="174" title="[朗迪威]体验非凡系列男士手提/斜挎包 啡"/></a>
                </td>
                <td colspan="2" class="goods_paddingright goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods14.jpg" width="174" height="174" title="[朗迪威]英朗风尚系列牛皮配料手提/斜挎包（10—14寸） 啡"/></a>
                </td>
                <td class="goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods15.jpg" width="174" height="174" title="[艾斯达]个性时尚潮流男包 咖啡色（褐色）"/></a>
                </td>
              </tr>
              <tr class="goods_miaoshu">
                <td><a href="#" title="[戈尔本]睿智风采系列时尚牛皮两用包 黑色">[戈尔本]睿智风采系列时尚牛皮两用包 黑色  </a></td>
                <td width="20"></td>
                <td><a href="#" title="[戈尔本]时代之潮系列牛皮手提/斜挎电脑包 黑色">[戈尔本]时代之潮系列牛皮手提/斜挎电脑包 黑色 </a></td>
                <td width="20"></td>
                <td><a href="#" title="[朗迪威]体验非凡系列男士手提/斜挎包 啡">[朗迪威]体验非凡系列男士手提/斜挎包 啡 </a></td>
                <td width="20"></td>
                <td><a href="#" title="[朗迪威]英朗风尚系列牛皮配料手提/斜挎包（10—14寸） 啡">[朗迪威]英朗风尚系列牛皮配料手提/斜挎包（10—... </a></td>
                <td width="20"></td>
                <td><a href="#" title="[艾斯达]个性时尚潮流男包 咖啡色（褐色） ">[艾斯达]个性时尚潮流男包 咖啡色（褐色） </a></td>
              </tr>
              <tr>
                <td colspan="2">
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥599</span>
                </td>
                <td colspan="2">
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥359</span>
                </td>
                <td colspan="2">
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥678</span>
                </td>
                <td colspan="2">
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥555</span>
                </td>
                <td>
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥268</span>
                </td>
              </tr>
              <tr>
                <td colspan="2" class="goods_paddingright goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods21.jpg" width="174" height="174" title="[戈尔本]城市节拍系列手提斜挎包 棕色（巧克力色）"/></a>
                </td>
                <td colspan="2" class="goods_paddingright goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods22.jpg" width="174" height="174" title="[朗迪威]英朗系列牛皮手提/斜挎包 灰 "/></a>
                </td>
                <td colspan="2" class="goods_paddingright goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods23.jpg" width="174" height="174" title="[朗迪威]灵感都市系列男士牛皮电脑包（13.3寸） 黑"/></a>
                </td>
                <td colspan="2" class="goods_paddingright goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods24.jpg" width="174" height="174" title="[朗迪威]圣马力诺系列编织纹牛皮手提/斜挎公文包(14寸) 黑"/></a>
                </td>
                <td class="goods_paddingtop">
                <a href="#"><img src="<%=basePath%>/images/floor4_goods25.jpg" width="174" height="174" title="[朗迪威]深邃幻影系列牛皮钱包 啡"/></a>
                </td>
              </tr>
              <tr class="goods_miaoshu">
                <td><a href="#" title="[戈尔本]城市节拍系列手提斜挎包 棕色（巧克力色） ">[戈尔本]城市节拍系列手提斜挎包 棕色（巧克力色） </a></td>
                <td width="20"></td>
                <td><a href="#" title="[朗迪威]英朗系列牛皮手提/斜挎包 灰 ">[朗迪威]英朗系列牛皮手提/斜挎包 灰  </a></td>
                <td width="20"></td>
                <td><a href="#" title="[朗迪威]灵感都市系列男士牛皮电脑包（13.3寸） 黑 ">[朗迪威]灵感都市系列男士牛皮电脑包（13.3寸）... </a></td>
                <td width="20"></td>
                <td><a href="#" title="[朗迪威]圣马力诺系列编织纹牛皮手提/斜挎公文包(14寸) 黑">[朗迪威]圣马力诺系列编织纹牛皮手提/斜挎公文包(... </a></td>
                <td width="20"></td>
                <td><a href="#" title="[朗迪威]深邃幻影系列牛皮钱包 啡">[朗迪威]深邃幻影系列牛皮钱包 啡 </a></td>
              </tr>
              <tr>
                <td colspan="2">
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥379</span>
                </td>
                <td colspan="2">
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥599</span>
                </td>
                <td colspan="2">
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥258</span>
                </td>
                <td colspan="2">
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥729</span>
                <td>
                <span class="goods_miaoshu">麦包价:</span>
                <span class="goods_price">￥188</span>
                </td>
              </tr>
            </table>
		</div>
        <!--首页  4F楼层 商品部分 结束-->
    
    <!--首页  4F  结束-->
    <!--首页  特价部分  开始-->
    <div id="tejia">
    	<!--首页  特价 左侧部分  开始-->
    	<div id="tejia_left">
        	<!--首页  特价左侧部分  楼层  开始-->
        	<div id="tejia_left_floor">
            	<a href="#">
            	<span class="tejia_floor">■</span>
            	<span class="floor_name">本周特价</span>
            	</a>
   		  	</div>
            <!--首页  特价左侧部分  楼层  结束-->
            <!--首页  特价左侧部分  商品  开始-->
               <div id="floor4_gooods">
               	 <table width="700" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td colspan="2" class="goods_paddingright goods_paddingtop">
                    <a href="#"><img src="<%=basePath%>/images/floor_goods11.jpg" width="147" height="145"  title="[浪美]丝巾情缘系列优雅单肩包 杏色"/></a></td>
                    <td colspan="2" class="goods_paddingright goods_paddingtop">
                    <a href="#"><img src="<%=basePath%>/images/floor_goods12.jpg" width="147" height="145" title="[DUDU]素年锦时系列牛皮多用包 粉红色"/></a>
                    </td>
                    <td colspan="2" class="goods_paddingright goods_paddingtop">
                    <a href="#"><img src="<%=basePath%>/images/floor_goods13.jpg" width="147" height="145" title="[飞扬空间]俏皮公主系列双肩包 浅金色"/></a>
                    </td>
                    <td class="goods_paddingtop">
                    <a href="#"><img src="<%=basePath%>/images/floor_goods14.jpg" width="147" height="145" title="[杜可]奇梦随想曲系列双肩包 红色"/></a>
                    </td>
                  </tr>
                  <tr class="goods_miaoshu">
                    <td><a href="#" title="[浪美]丝巾情缘系列优雅单肩包 杏色">[浪美]丝巾情缘系列优雅单肩包 杏色  </a></td>
                    <td width="20"></td>
                    <td><a href="#" title="[DUDU]素年锦时系列牛皮多用包 粉红色">[DUDU]素年锦时系列牛皮多用包 粉红色  </a></td>
                    <td width="20"></td>
                    <td><a href="#" title="[飞扬空间]俏皮公主系列双肩包 浅金色">[飞扬空间]俏皮公主系列双肩包 浅金色 </a></td>
                    <td width="20"></td>
                    <td><a href="#" title="[杜可]奇梦随想曲系列双肩包 红色 ">[杜可]奇梦随想曲系列双肩包 红色 </a></td>
                  </tr>
                  <tr>
                    <td colspan="2">
                    <span class="goods_price">特价:</span>
                    <span class="goods_price">￥129</span>
                    <span class="goods_tejia"><s>￥169</s></span>
                    
                    </td>
                    <td colspan="2">
                    <span class="goods_price">特价:</span>
                    <span class="goods_price">￥178</span>
                    <span class="goods_tejia"><s>￥258</s></span>
                    </td>
                    <td colspan="2">
                    <span class="goods_price">特价:</span>
                    <span class="goods_price">￥129</span>
                    <span class="goods_tejia"><s>￥157</s></span>
                    </td>
                    <td>
                    <span class="goods_price">特价:</span>
                    <span class="goods_price">￥79</span>
                    <span class="goods_tejia"><s>￥99</s></span>
                    </td>
                  </tr>
                  <tr>
                    <td colspan="2" class="goods_paddingright goods_paddingtop">
                    <a href="#"><img src="<%=basePath%>/images/floor_goods21.jpg" width="147" height="145" title="[澳洲袋鼠]艺术人生系列典雅单肩包 粉红色"/></a>
                    </td>
                    <td colspan="2" class="goods_paddingright goods_paddingtop">
                    <a href="#"><img src="<%=basePath%>/images/floor_goods22.jpg" width="147" height="145" title="[DUDU]烙印系列牛皮斜挎包 桔黄色（橙色）"/></a>
                    </td>
                    <td colspan="2" class="goods_paddingright goods_paddingtop">
                    <a href="#"><img src="<%=basePath%>/images/floor_goods23.jpg" width="147" height="145" title="[戈尔本]苏格兰系列牛皮手提/斜挎电脑包（12寸） 咖啡色（褐色）"/></a>
                    </td>
                    <td class="goods_paddingtop">
                    <a href="#"><img src="<%=basePath%>/images/floor_goods24.jpg" width="147" height="145" title="[DUDU]时空印象系列时尚牛皮单肩包 黑色"/></a>
                    </td>
                  </tr>
                  <tr class="goods_miaoshu">
                    <td><a href="#" title="[澳洲袋鼠]艺术人生系列典雅单肩包 粉红色">[澳洲袋鼠]艺术人生系列典雅单肩包 粉红色 </a></td>
                    <td width="20"></td>
                    <td><a href="#" title="[DUDU]烙印系列牛皮斜挎包 桔黄色（橙色） ">[DUDU]烙印系列牛皮斜挎包 桔黄色（橙色） </a></td>
                    <td width="20"></td>
                    <td><a href="#" title="[戈尔本]苏格兰系列牛皮手提/斜挎电脑包（12寸） 咖啡色（褐色）">[戈尔本]苏格兰系列牛皮手提/斜挎电脑包（12寸）...  </a></td>
                    <td width="20"></td>
                    <td><a href="#" title="[DUDU]时空印象系列时尚牛皮单肩包 黑色">[DUDU]时空印象系列时尚牛皮单肩包 黑色</a></td>
                  </tr>
                  <tr>
                    <td colspan="2">
                    <span class="goods_price">特价:</span>
                    <span class="goods_price">￥249</span>
                    <span class="goods_tejia"><s>￥336</s></span>
                    </td>
                    <td colspan="2">
                    <span class="goods_price">特价:</span>
                    <span class="goods_price">￥168</span>
                    <span class="goods_tejia"><s>￥268</s></span>
                    </td>
                    <td colspan="2">
                    <span class="goods_price">特价:</span>
                    <span class="goods_price">￥259</span>
                    <span class="goods_tejia"><s>￥359</s></span>
                    <td>
                    <span class="goods_price">特价:</span>
                    <span class="goods_price">￥139</span>
                    <span class="goods_tejia"><s>￥198</s></span>
                    </td>
                  </tr>
              	 </table>
			   </div>
            <!--首页  特价左侧部分  商品  结束-->
        </div>
        <!--首页  特价 左侧部分  结束-->
        <!--首页  特价 右侧部分  开始-->
        <div id="tejia_right">
        	<!--首页  特价右侧部分  楼层  开始-->
            	<div id="tejia_right_floor">
            	<a href="#">
            	<span class="tejia_floor">■</span>
            	<span class="floor_name">热门评论</span>
            	</a>
   		  		</div>
                <div id="tiejia_right_shangpin">
                   <marquee direction="down" loop="-1" scrolldelay="200" height="508">
   					<table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic1.jpg" width="80" height="80" /></td>
                        <td height="19">carol</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">太喜欢了，很漂亮了，很大牌，一直都喜欢卓妮尔的包款式及质量都... </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic2.jpg" width="80" height="80" /></td>
                        <td height="19"> pengx</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买包包赠送的，很漂亮，容量也挺大的，很喜欢。发货速度很快，快... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic3.jpg" width="80" height="80" /></td>
                        <td height="19">jim..</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">非常炫的颜色，春天夏天背很不错哦，可以双肩背，也可以单肩背，... 
 </a></td>
                      </tr>
                    </table>
                  	<table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic5.jpg" width="80" height="80" /></td>
                        <td height="19">walye</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">很有质感的的一款包，容量也比较大，因为身高较高，背上很适合哦... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic4.jpg" width="80" height="80" /></td>
                        <td height="19">peng</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买给男朋友的妈妈，很满意，颜色很漂亮，旁边加了拉链更实用 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic1.jpg" width="80" height="80" /></td>
                        <td height="19">carol</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">太喜欢了，很漂亮了，很大牌，一直都喜欢卓妮尔的包款式及质量都... </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic2.jpg" width="80" height="80" /></td>
                        <td height="19"> pengx</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买包包赠送的，很漂亮，容量也挺大的，很喜欢。发货速度很快，快... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic3.jpg" width="80" height="80" /></td>
                        <td height="19">jim..</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">非常炫的颜色，春天夏天背很不错哦，可以双肩背，也可以单肩背，... 
 </a></td>
                      </tr>
                    </table>
                  	<table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic5.jpg" width="80" height="80" /></td>
                        <td height="19">walye</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">很有质感的的一款包，容量也比较大，因为身高较高，背上很适合哦... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic4.jpg" width="80" height="80" /></td>
                        <td height="19">peng</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买给男朋友的妈妈，很满意，颜色很漂亮，旁边加了拉链更实用 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic1.jpg" width="80" height="80" /></td>
                        <td height="19">carol</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">太喜欢了，很漂亮了，很大牌，一直都喜欢卓妮尔的包款式及质量都... </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic2.jpg" width="80" height="80" /></td>
                        <td height="19"> pengx</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买包包赠送的，很漂亮，容量也挺大的，很喜欢。发货速度很快，快... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic3.jpg" width="80" height="80" /></td>
                        <td height="19">jim..</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">非常炫的颜色，春天夏天背很不错哦，可以双肩背，也可以单肩背，... 
 </a></td>
                      </tr>
                    </table>
                  	<table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic5.jpg" width="80" height="80" /></td>
                        <td height="19">walye</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">很有质感的的一款包，容量也比较大，因为身高较高，背上很适合哦... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic4.jpg" width="80" height="80" /></td>
                        <td height="19">peng</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买给男朋友的妈妈，很满意，颜色很漂亮，旁边加了拉链更实用 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic1.jpg" width="80" height="80" /></td>
                        <td height="19">carol</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">太喜欢了，很漂亮了，很大牌，一直都喜欢卓妮尔的包款式及质量都... </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic2.jpg" width="80" height="80" /></td>
                        <td height="19"> pengx</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买包包赠送的，很漂亮，容量也挺大的，很喜欢。发货速度很快，快... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic3.jpg" width="80" height="80" /></td>
                        <td height="19">jim..</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">非常炫的颜色，春天夏天背很不错哦，可以双肩背，也可以单肩背，... 
 </a></td>
                      </tr>
                    </table>
                  	<table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic5.jpg" width="80" height="80" /></td>
                        <td height="19">walye</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">很有质感的的一款包，容量也比较大，因为身高较高，背上很适合哦... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic4.jpg" width="80" height="80" /></td>
                        <td height="19">peng</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买给男朋友的妈妈，很满意，颜色很漂亮，旁边加了拉链更实用 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic1.jpg" width="80" height="80" /></td>
                        <td height="19">carol</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">太喜欢了，很漂亮了，很大牌，一直都喜欢卓妮尔的包款式及质量都... </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic2.jpg" width="80" height="80" /></td>
                        <td height="19"> pengx</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买包包赠送的，很漂亮，容量也挺大的，很喜欢。发货速度很快，快... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic3.jpg" width="80" height="80" /></td>
                        <td height="19">jim..</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">非常炫的颜色，春天夏天背很不错哦，可以双肩背，也可以单肩背，... 
 </a></td>
                      </tr>
                    </table>
                  	<table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic5.jpg" width="80" height="80" /></td>
                        <td height="19">walye</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">很有质感的的一款包，容量也比较大，因为身高较高，背上很适合哦... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic4.jpg" width="80" height="80" /></td>
                        <td height="19">peng</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买给男朋友的妈妈，很满意，颜色很漂亮，旁边加了拉链更实用 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic1.jpg" width="80" height="80" /></td>
                        <td height="19">carol</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">太喜欢了，很漂亮了，很大牌，一直都喜欢卓妮尔的包款式及质量都... </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic2.jpg" width="80" height="80" /></td>
                        <td height="19"> pengx</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买包包赠送的，很漂亮，容量也挺大的，很喜欢。发货速度很快，快... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic3.jpg" width="80" height="80" /></td>
                        <td height="19">jim..</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">非常炫的颜色，春天夏天背很不错哦，可以双肩背，也可以单肩背，... 
 </a></td>
                      </tr>
                    </table>
                  	<table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic5.jpg" width="80" height="80" /></td>
                        <td height="19">walye</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">很有质感的的一款包，容量也比较大，因为身高较高，背上很适合哦... 
 </a></td>
                      </tr>
                    </table>
                    <table width="243" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td rowspan="2" width="80"><img src="<%=basePath%>/images/remenpic4.jpg" width="80" height="80" /></td>
                        <td height="19">peng</td>
                        <td class="red">★★★★★</td>
                      </tr>
                      <tr>
                        <td colspan="2" class="goods_miaoshu"><a href="#">买给男朋友的妈妈，很满意，颜色很漂亮，旁边加了拉链更实用 </a></td>
                      </tr>
                    </table>
                    
                    </marquee>
                
       			 </div>
            <!--首页  特价右侧部分  楼层  结束-->
        </div>
        <!--首页  特价 右侧部分  结束-->
    </div>
    <!--首页  特价部分  结束-->
    <!--首页  尾部  开始-->
    <div id="maiyoushaibao">
    	<!--首页  尾部 左侧 开始-->
        <div id="maiyoushaibao_left">
        	<!--首页  尾部 左侧 导航 开始-->
            	<div id="floor_maiyoushaibao">
                <span id="shaibao_logo">
                <img src="<%=basePath%>/images/maiyoushaibao.gif" width="129" height="26" />
                </span>
                <span id="shaibaoneirong" class="hotneirong">
                <a href="#">首次晒包<span class="red">即可获得5元现金券，</span>快来晒晒你的真人秀吧！</a> </span>
          		</div>
            <!--首页  尾部 左侧 导航 结束-->
            <!--首页  尾部 左侧 滚动内容 开始-->
                <div id="maiyoushaibao_gundong">
                 <style type="text/css">
					<!--
						#demo {
						background: #FFF;
						overflow:hidden;
						border: 1px dashed #CCC;
						width: 698px;
						height:298px;
						}
						#demo img {
						border: 3px solid #F2F2F2;
						}
						#indemo {
						float: left;
						width: 800%;
						}
						#demo1 {
						float: left;
						}
						#demo2 {
						float: left;
						}
					-->
				</style>
	<div id="demo">
	<div id="indemo">
	<div id="demo1">
   			<!--滚动内容1 开始-->
                 <div class="gundong">
                    <table width="160" border="0" cellspacing="0" cellpadding="0" align="center";>
                        <tr>
                          <td class="gundongpic"><img src="<%=basePath%>/images/gundongtupian_1.jpg" /></td>
                          </tr>
                          <tr>
                            <td class="gundongtext">包包很适合小个子MM，百搭款，总体性价比高</td>
                          </tr>
                          <tr>
                            <td class="gundongfrom">来自：heiba</td>
                          </tr>
                        </table>
    			   </div>
            <!--滚动内容1 结束-->
            <!--滚动内容2 开始-->
                  <div class="gundong">
                    	<table width="160" border="0" cellspacing="0" cellpadding="0" align="center";>
                          <tr>
                            <td class="gundongpic"><img src="<%=basePath%>/images/gundongtupian_2.jpg" /></td>
                          </tr>
                          <tr>
                            <td class="gundongtext">很抢眼的颜色！同事看到都说好看！有时可以玩撞色，和蓝</td>
                          </tr>
                          <tr>
                            <td class="gundongfrom">来自：千羽依依</td>
                          </tr>
                        </table>
    			   </div>
            <!--滚动内容2 结束-->
            <!--滚动内容3 开始-->
                 <div class="gundong">
                    <table width="160" border="0" cellspacing="0" cellpadding="0" align="center";>
                          <tr>
                            <td class="gundongpic"><img src="<%=basePath%>/images/gundongtupian_3.jpg" /></td>
                          </tr>
                          <tr>
                            <td class="gundongtext">刚开始不习惯比较艳的颜色，但是背起来很多朋友都说好</td>
                          </tr>
                          <tr>
                            <td class="gundongfrom">来自：简溪</td>
                          </tr>
                       </table>
    			  </div>
            <!--滚动内容3 结束-->
            <!--滚动内容4 开始-->
                 <div class="gundong">
                      <table width="160" border="0" cellspacing="0" cellpadding="0" align="center";>
                          <tr>
                            <td class="gundongpic"><img src="<%=basePath%>/images/gundongtupian_4.jpg" /></td>
                          </tr>
                          <tr>
                            <td class="gundongtext">包包很适合小个子MM，百搭款，总体性价比高</td>
                          </tr>
                          <tr>
                            <td class="gundongfrom">来自：heiba</td>
                          </tr>
                       </table>
    			 </div>
            <!--滚动内容4 结束-->
    		<!--滚动内容5 开始-->
                 <div class="gundong">
                    	<table width="160" border="0" cellspacing="0" cellpadding="0" align="center";>
                          <tr>
                            <td class="gundongpic"><img src="<%=basePath%>/images/gundongtupian_5.jpg" /></td>
                          </tr>
                          <tr>
                            <td class="gundongtext">很百搭的颜色，百搭的包包~</td>
                          </tr>
                          <tr>
                            <td class="gundongfrom">来自：罗合</td>
                          </tr>
                        </table>
    			 </div>
            <!--滚动内容5 结束-->
            <!--滚动内容6 开始-->
                 <div class="gundong">
                    	<table width="160" border="0" cellspacing="0" cellpadding="0" align="center";>
                          <tr>
                            <td class="gundongpic"><img src="<%=basePath%>/images/gundongtupian_6.jpg" /></td>
                          </tr>
                          <tr>
                            <td class="gundongtext">正好需要一个双肩包，看到罗志祥的活动就来买了。背了一</td>
                          </tr>
                          <tr>
                            <td class="gundongfrom">来自：焦糖小鱼儿</td>
                          </tr>
                        </table>
    			 </div>
            <!--滚动内容6 结束-->
            
       
   
        
    </div>
        <div id="demo2"></div>
        </div>
        </div>
        <script>
        <!--
        var speed=1;
        var tab=document.getElementById("demo");
        var tab1=document.getElementById("demo1");
        var tab2=document.getElementById("demo2");
        tab2.innerHTML=tab1.innerHTML;
        function Marquee(){
        if(tab2.offsetWidth-tab.scrollLeft<=0)
        tab.scrollLeft-=tab1.offsetWidth
        else{
        tab.scrollLeft++;
        }
        }
        var MyMar=setInterval(Marquee,speed);
        tab.onmouseover=function() {clearInterval(MyMar)};
        tab.onmouseout=function() {MyMar=setInterval(Marquee,speed)};
        -->
        </script>   
                	
        </div>
            <!--首页  尾部 左侧 滚动内容 结束-->
        </div>
        <!--首页  尾部 左侧 结束-->
        <!--首页  尾部 右侧 开始-->
      	 <div id="maiyoushaibao_right">
        	<!--首页  尾部 右侧导航 开始-->
        	 <div id="maiyoushaibao_righ_floor">
				<a href="#">
            	<span class="tejia_floor">■</span>
            	<span class="floor_name">麦包包影响力</span>
                </a>
       		    </div>
            <!--首页  尾部 右侧导航 结束-->
            <!--首页  尾部 右侧 新闻 开始-->
           	 <div id="news" >
    		  <table width="230" border="0" cellspacing="0" cellpadding="0" align="center" id="news_tb">
                  <tr>
                    <td rowspan="2"><img src="<%=basePath%>/images/news.jpg" width="71" height="71" /></td>
                    <td class="news_biaoti"><a href="#">麦包包艾斯达携手修杰楷 三月共谱有爱四重奏</a></td>
                  </tr>
                  <tr>
                    <td  class="goods_miaoshu"><a href="#" title="日前，麦包包为台湾知名艺人修杰楷线上庆生，众多粉丝送上了生日祝福。">日前，麦包包为台湾知名艺人修杰楷线... [详细] 
                    </a></td>
                  </tr>
                  <tr>
                    <td colspan="2" class="goods_miaoshu">
                    <ul>
                    <li><a href="#" title="麦包包JAMIE MOORE新品首发 女人节行走在纽约街头">麦包包JAMIE MOORE...</a></li>
                    <li><a href="#" title="''白色情人节"精品男包三步曲 麦包包对"他"宠爱有加">白色情人节"精品男包三步... </a></li>
                    <li><a href="#" title="天使爱麦包包 享爱 享购物">天使爱麦包包 享爱 享购物  </a></li>
                    </ul>
                    </td>
                  </tr>
                </table>
            </div>
            <!--首页  尾部 右侧 新闻 结束-->
            <!--首页  尾部 右侧 卖友互访 开始-->
             <div id="maiyouhufang">
            	<table width="250" border="0" cellspacing="0" cellpadding="0" height="110" id="maiyouhufang_tb">
                  <tr>
                    <td rowspan="3"><img src="<%=basePath%>/images/maiyouhufang.gif" width="28" height="110" /></td>
                    <td rowspan="3" width="10"></td>
                    <td colspan="2"  class="xuxian"><a href="#"><img src="<%=basePath%>/images/xinlanglogo.gif" width="89" height="50"  border="0"/></a> <a href="#"><img src="<%=basePath%>/images/tengxunlogo.gif" width="89" height="50" border="0" /></a></td>
                    <td rowspan="3" width="10"></td>
                  </tr>
                  <tr height="30">
                    <td class="dingyue">订阅最新特惠信息</td>
                    <td class="dingyue"><a href="#">更多订阅》</a></td>
                  </tr>
                  <tr>
                    <td colspan="2"><input id="dingyuebox" type="text" />
                    <input type="submit" name="dingyueanniu" id="dingyueanniu" value="订阅" /></td>
                  </tr>
                </table>
			</div>
            <!--首页  尾部 右侧 卖友互访 结束-->
         </div>
        <!--首页  尾部 右侧 结束-->
     </div>
    <!--首页  尾部  结束-->
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
    
    
    <!--我的消息 div开始-->
   	<div id="message">
        <table width="188" border="0" cellspacing="0" cellpadding="0" align="center" height="30">
          <tr>
            <td style="border-right:1px solid #c0c0c0" align="center" valign="middle"><a href="#">我的消息</a></td>
            <td align="center" valign="middle"><a href="#">我的私囊</a></td>
          </tr>
        </table>
	</div>
    <!--我的消息 div结束-->
			<script type="text/javascript">
        var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
            </script>
</body>
</html>
