<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>会员注册 - 麦包包网</title>
<link href="<%=basePath%>/styles/global.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/styles/zhuce.css" type="text/css" rel="stylesheet" />
<link href="<%=basePath%>/styles/toubu.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/SpryAssets/wodemaibaobao.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>/styles/footer.css" type="text/css" rel="stylesheet" />
<script src="<%=basePath%>/SpryAssets/wodemaibaobao.js" type="text/javascript"></script>
<script src="<%=basePath%>/SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<script language="javascript">
<!--
//手机号码纯数字11位

function check()
	{
		var reg = /\d{11}/;
		var str = document.getElementById("tx").value;
		
			if(str.match(reg)==str)
			{   
				document.getElementById("sp").innerHTML = "有效手机号";
			
			}
			else
			{
				document.getElementById("sp").innerHTML = "不合法手机号";
				return false;
			}
	}
//手机号码前两位匹配 13|15|18 
function check2()
	{
		var reg = /(13|15|18)\d{9}/;
		var str = document.getElementById("tx").value;
	
			if(reg.test(str)==true &&str.length==11)
			{
				document.getElementById("sp").innerHTML = "有效手机号";
				
			}
			else
			{
				document.getElementById("sp").innerHTML ="不合法手机号";
				return false;
			}
	}

-->
</script>
<script language="javascript">
	window.onload = function ()
	{
		var btnobj = document.getElementById("username");
		btnobj.onblur = check;
	}
		
		
	function check3()
	{
		var usernamev = document.getElementById("username").value;
		var reg=/\b\w{6,20}\b/;
	
			if(reg.test(usernamev)==true)
			{
				document.getElementById("sp1").innerHTML = "输入正确";
			
			}
			else
			{
				document.getElementById("sp1").innerHTML ="您输入的密码格式错误！！！";
				return false;
			}	
	}
</script>
<script type="text/javascript">
 function checkpwd(){
  var p1=document.form1.username.value;
  var p2=document.form1.pwd2.value;//获取重新输入的密码值
  
  if(p1!=p2){//判断两次输入的值是否一致，不一致则显示错误信息
   document.getElementById("msg").innerHTML="两次输入密码不一致，请重新输入";//在div显示错误信息
   return false;
  }else{
	  document.getElementById("msg").innerHTML="√";
	
   //密码一致，可以继续下一步操作 
  }
 }
 
</script>

<script type="text/javascript">
function check4()
	{
		var str = document.getElementById("pwdy").value;
	
			if(str=="typy")
			{
				document.getElementById("y").innerHTML = "成功";
			
			}
			else
			{
				document.getElementById("y").innerHTML ="错误";return false;
			}
	}


function checkAll(){
	
	  if(check()==false) return false;
	if(check2()==false) return false;
	if(check3()==false) return false;
	if(checkpwd()==false) return false;
	if(check4()==false) return false;
	
}
</script>
<script type="text/javascript">
function denglu(){
	window.location.href="/Minions/denglu.jsp"
 }
</script>
</head>

<body>
<s:if test="#session.onRegister!=null">
<script language="javascript">
	alert("该号码已经注册！请登录或找回密码");
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
            <td width="99" align="right" class="dengluyanse">[ <b><a href="#">登 录</a></b>/<b><a href="#">注 册</a></b> ]</td>
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
        
        <a href="#"> <div id="header3_d2">
        <table width="286" border="0" cellspacing="0" cellpadding="0" id="header3_tab1">
          <tr>
           <td width="48" align="center" id="header_1" onmouseover="on_1()" onmouseout="leave_1()">新品</td>
            <td width="52" align="center" id="header_2" onmouseover="on_2()" onmouseout="leave_2()">品牌</td>
            <td width="50" align="center" id="header_3" onmouseover="on_3()" onmouseout="leave_3()">促销</td>
            <td width="64" align="center" id="header_4" onmouseover="on_4()" onmouseout="leave_4()">风云榜</td>
            <td width="72" align="center" id="header_5" onmouseover="on_5()" onmouseout="leave_5()">选包中心</td>

          </tr>
        </table>
       
        </div></a>
        </div>
       
        <!--头部第三层结束-->
        <!--头部第四层开始-->
        <div id="header4">
        <img src="<%=basePath%>/images/laba.gif" width="16" height="14" /> 公告:·<font color="#ED1C24">全场满99元免运费（支持货到付款，10天无条件退货款）</font>·<font color="#888888">手机麦包包，畅享移动购物新乐趣！</font>
        
        </div>
        <!--头部第四层结束-->
<!--头部结束-->



<!--注册开始-->
<!--注册整体div-->
<div id="zhuce">
<!--内部上层div-->
    <div id="zhuce_top">
        <table width="912" border="0" cellspacing="0" cellpadding="0" id="zhece_top_t1">
          <tr>
            <td align="left" id="zhuce_top_t1_td1"><b>欢迎注册麦包包网站</b></td>
            <td align="center" id="zhuce_top_t1_td2"><img src="<%=basePath%>/images/yuan1.gif" width="15" height="15" /> <font color="#FF0000">填写注册信息</font> > <img src="<%=basePath%>/images/yuan2.gif" width="15" height="15" /> 验证邮箱/手机号码 > <img src="<%=basePath%>/images/yuan3.gif" width="15" height="15" /> 注册成功</td>
            <td align="right" id="zhuce_top_t1_td3"><a href="#">登陆注册改版了，大家有任何疑问都请反馈给我们哦~</a></td>
          </tr>
        </table>
    </div>
<!--内部左边div-->
<div id="zhuce_left">
    <form name="form1" action="/Minions/user/register_userRegister" method="get" onsubmit="return checkAll();">
        <table width="598" border="0" cellspacing="0" cellpadding="5" id="zhuce_left_t1">
          <tr>
              <td width="164" align="right">手机号码：</td>
              <td colspan="2"><input type="text" id="tx" name="tx" onblur="check2();" /></td>
              <td width="114"><span  id="sp" class="geshi"><font color="#00FFCC">请输入您的手机号</font></span></td>
          </tr>
          <tr>
              <td align="right">设置密码：</td>
              <td colspan="2"><input type="password" id="username" name="username"  onchange="check3()"/></td>
              <td width="114"><span id="sp1" class="geshi1"><font color="#00FFCC">密码可使用数字加字母或下划线的组合长度6-20个字符</font> </span></td>
              </tr>
          <tr>
              <td align="right">确认密码：</td>
              <td colspan="2"><input type="password" name="pwd2" onchange="checkpwd()" /></td>
              <td width="114"><div id="msg" style="color:red;"></div></td>
              </tr>
          <tr>
              <td align="right">验证码：</td>
              <td width="82" valign="bottom" class="zhuce_left_t1_td"><input type="text" id="pwdy" name="pwdy" onchange="check4()"/></td>
              <td width="198" valign="middle" class="zhuce_left_t1_td"><img src= "<%=basePath%>/images/yanzhengma.gif" width="54" height="23" />  			<font color="#FF0000">换一张？</font><div id="y" style="color:red;"></div></td>
              <td class="zhuce_left_t1_td" valign="bottom">&nbsp;</td>
              </tr>
        </table>
    <table width="598" border="0" cellspacing="0" cellpadding="10" id="zhuce_left_t2">
      <tr>
         <td><center><input type="submit" id="btn" name="btn" value=" 提交注册 "  /> 
      </tr>
      <tr>
        <td align="center"><input type="checkbox" value="chifan"  />已经阅读并同意
          <a href="#">《麦包包用户服务协议》</a></td>
      </tr>
    </table>
</form>
</div>
<!--内部右边div-->
    <div id="zhuce_right">
    <table width="300" border="0" cellspacing="0" cellpadding="0" id="zhuce_right_t1">
          <tr>
            <td height="15" align="center">我已经注册，现在就登陆</td>
          </tr>
          <tr>
            <td height="54" align="center"><input name="" type="button" value="登录" onclick="denglu()" /></td>
          </tr>
          <tr>
            <td align="center">我已用邮箱注册，我要<a href="#">绑定手机</a></td>
          </tr>
          <tr>
            <td align="center">我已用手机注册，我要<a href="#">绑定邮箱</a></td>
          </tr>
    </table>
    </div>
</div>
<!--注册结束-->
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
