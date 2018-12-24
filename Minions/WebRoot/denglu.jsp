<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>会员登录/注册 - 麦包包网</title>
<link href="<%=basePath%>/styles/global.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/styles/denglu.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/styles/toubu.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/SpryAssets/wodemaibaobao.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/styles/footer.css" type="text/css" rel="stylesheet" />
<script src="<%=basePath%>/SpryAssets/wodemaibaobao.js" type="text/javascript"></script>
<script src="<%=basePath%>/SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script type="text/javascript">
// function ceshi(){
// 	window.alert("用户名或密码错误！");
// }

function denglu(){
	var yonghuming=dianjidenglu.yonghuming.value;
	var mima=dianjidenglu.mima.value;
	var yanzhengma=dianjidenglu.yanzhengma.value;
	if(yonghuming=="请填写您的邮箱地址或手机号码"||yonghuming==""){
		document.getElementById("yonghumingtishi").innerHTML="请填写用户名";
		}
		else if(mima==""){
			document.getElementById("mimatishi").innerHTML="请填写密码";
			}
			else if(yonghuming==null){
				document.getElementById("yanzhengmatishi").innerHTML="请填写验证码";
				}
// 				else if(yonghuming!="核武器"){
// 					document.getElementById("yonghumingtishi").innerHTML="用户名不存在";
// 					}
// 					else if(mima!="hewuqi"){
// 					document.getElementById("mimatishi").innerHTML="密码错误";
// 					}
						else if(yanzhengma!="TYPY"&&yanzhengma!="typy")
						{
						document.getElementById("yanzhengmatishi").innerHTML="验证码错误";
						}
						  else{
							  document.getElementById("dianjidenglu").submit();
							  }
	}
</script>
<script type="text/javascript">
function qvdiao(){
	var a=document.getElementById("yonghuming");
	if(a.value=="请填写您的邮箱地址或手机号码")
	a.value="";
	}
function weitianxie(){
	var a=document.getElementById("yonghuming").value;
    if(a==""){
	document.getElementById("yonghuming").value="请填写您的邮箱地址或手机号码";
	}
	}
</script>
<script type="text/javascript">
function zhuce(){
	window.location.href="/Minions/zhuce.jsp"
 }
</script>
</head>

<body>
<!-- 测试是否存在错误信息 -->
	<s:if test="#session.message!=null">
		<script type="text/javascript">
			window.alert("用户名或密码错误！");
		</script>
	</s:if>
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
            <td width="132"> <font color="#888888">您好，欢迎光临麦包包！</font></td>
            <td width="99" align="right" class="dengluyanse">[ <b><a href="/Minions/denglu.jsp">登 录</a></b>/<b><a href="/Minions/zhuce.jsp">注 册</a></b> ]</td>
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
      <li><a class="MenuBarItemSubmenu" href="shouye.html">首页</a>
        <ul>
          <li>麦包包<br />
<a href="nvbao.html"> 女包 </a><a href="men.html">男包 </a><a href="#">两用 </a></li>
          
         </ul>
      </li>
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



<!--登陆开始-->
<!--登陆整体div-->
<div id="denglu">
<!--内部上层div-->
<div id="denglu_top">
<table width="912" border="0" cellspacing="0" cellpadding="0" id="denglu_top_t1">
  <tr>
    <td align="left" id="denglu_top_t1_td1"><b>用户登录</b></td>
    <td align="right" id="denglu_top_t1_td2"><a href="#">登陆注册改版了，大家有任何疑问都请反馈给我们哦~</a></td>
  </tr>
</table>
</div>
<!--内部左边div-->
<div id="denglu_left">
<form action="/Minions/user/login_userLogin" method="post" id="dianjidenglu" name="dianjidenglu">
<table width="598" border="0" cellspacing="0" cellpadding="16" id="denglu_left_t1">
  <tr>
      <td width="77">用户名:</td>
      <td colspan="2"><input name="name"id="yonghuming" type="text" value="请填写您的邮箱地址或手机号码"  onfocus="qvdiao()" onblur="weitianxie()"/></td>
<!--       <td width="201" class="denglu_left_t1_td"><span id="yonghumingtishi">请填写您的邮箱地址或手机号码</span></td> -->
  </tr>
  <tr>
      <td>登录密码：</td>
      <td colspan="2"><input name="userPwd" id="mima" type="password" /></td>
<!--       <td class="denglu_left_t1_td"><span id="mimatishi">请输入您的密码</span></td> -->
  </tr>
  <tr>
      <td>验证码：</td>
      <td width="71" class="denglu_left_t1_td"><input name="yanzhengma" type="text" id="yanzhengma" /></td>
      <td width="121" class="denglu_left_t1_td"><img src= "<%=basePath%>/images/yanzhengma.gif" width="54" height="23" /></td>
      <td class="denglu_left_t1_td"><span id="yanzhengmatishi">换一张？ 请输入图片上的内容</span></td>
      </tr>
</table>
<table width="598" border="0" cellspacing="0" cellpadding="8" id="denglu_left_t2">
  <tr>
    <td align="center"><input name="" type="button" value="登陆" onclick="denglu()" /></td>
  </tr>
  <tr>
    <td>使用合作网站账号登录麦包包</td>
  </tr>
  <tr>
    <td id="denglu_left_t2_td"><img src="<%=basePath%>/images/sina.gif" width="98" height="25" /><img src="<%=basePath%>/images/139.gif" width="99" height="25" /><img src="<%=basePath%>/images/renren.gif" width="99" height="25" /><img src="<%=basePath%>/images/zhifubao.gif" width="151" height="30" /></td>
  </tr>
</table>	
</form>
</div>
<!--内部右边div-->
<div id="denglu_right">
<table width="300" border="0" cellspacing="0" cellpadding="0" id="denglu_right_t1">
  <tr>
    <td align="center">现在还不是麦包包网站会员？</td>
  </tr>
  <tr>
    <td align="center"><input name="" type="button" value="注册新用户" id="zhucexinyonghu" onclick="zhuce()"/></td>
  </tr>
</table>
</div>
</div>
<!--登陆结束-->
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
