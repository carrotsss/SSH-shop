<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>填写核对订单信息 - 麦包包</title>
<link rel="stylesheet" type="text/css" href="styles/tianxieheduixinxi.css"/>
<script type="text/javascript" src="js/sitedata_bas.js" charset="utf-8"></script>
<script language="javascript">
var Utils = {};
Utils.addEvent = function(el, type, func) {
	if (document.addEventListener) {
		el.addEventListener(type, func, false);
	} else if (document.attachEvent) {
		el.attachEvent('on' + type, func);
	}
};
Utils.addEvent(window, 'load', function() {
	var region1 = document.getElementById("region1");
	var region2 = document.getElementById("region2");
	var region3 = document.getElementById("region3");
	for ( var i = 0; i < arrCity.length; i++) {
		region1.options[i] = new Option(arrCity[i].name, arrCity[i].name);
	}
	region2.options[0] = new Option("请选择", "请选择");
	region3.options[0] = new Option("请选择", "请选择");
	region3.style.display = "none";
	Utils.addEvent(region1, 'change', function() {
		var region1_obj = arrCity[region1.selectedIndex];
		var region2_arr = region1_obj.sub;
		region2.options.length = 0;
		region3.options.length = 0;
		region3.style.display = "none";
		for ( var i = 0; i < region2_arr.length; i++) {
			region2.options[i] = new Option(region2_arr[i].name, region2_arr[i].name);
		}
	});
	Utils.addEvent(region2, 'change', function() {
		var region1_obj = arrCity[region1.selectedIndex];
		var region2_obj = region1_obj.sub[region2.selectedIndex];
		var region3_arr = region2_obj.sub;
		if (region2_obj.type == 0) {
			region3.options.length = 0;
			region3.style.display = "inline";
			for ( var i = 0; i < region3_arr.length; i++) {
				region3.options[i] = new Option(region3_arr[i].name, region3_arr[i].name);
			}
		} else {
			region3.style.display = "none";
		}
	});
});
</script>
<script type="text/javascript">
function checkyouxiang(){
	var youxiang=document.getElementById("youxiang1").value;
	var number1=youxiang.indexOf(".");
	var number2=youxiang.indexOf("@");
if(number1.length==0||number2.lenth==0||number1-number2<=1)
	{
	 document.getElementById("youxiang").innerHTML="邮箱格式错误";
	 return false;
    }
		 else{
	document.getElementById("youxiang").innerHTML="邮箱格式正确";
	}
}	
function focusyouxiang(){
	document.getElementById("youxiang").innerHTML="";
	}
	
function checkshouhuoren(){
	var shouhuoren=document.getElementById("shouhuoren1").value;
	if(shouhuoren!="")
	{
	 document.getElementById("shouhuoren").innerHTML="√";
	
    }
		 else{
	 document.getElementById("shouhuoren").innerHTML="收货人不能为空";
	  return false;
			 }
	}
function focusshouhuoren(){
	 document.getElementById("shouhuoren").innerHTML="";
	}
function checkxiangxidizhi(){
	var xiangxidizhi=document.getElementById("xiangxidizhi1").value;
	if(xiangxidizhi!="")
	{
	 document.getElementById("xiangxidizhi").innerHTML="√";
	
    }
		 else{
	 document.getElementById("xiangxidizhi").innerHTML="详细地址不能为空";
	  return false;
			 }
	}
function focusxiangxidizhi(){
	 document.getElementById("xiangxidizhi").innerHTML="";
	}
function checkyouzhengbianma(){
	var youzhengbianma=document.getElementById("youzhengbianma1").value;
	if(youzhengbianma!="")
	{
	 document.getElementById("youzhengbianma").innerHTML="√";
	 
    }
		 else{
	 document.getElementById("youzhengbianma").innerHTML="邮政编码不能为空";
	 return false;
			 }
	}
function focusyouzhengbianma(){
	 document.getElementById("youzhengbianma").innerHTML="";
	}
function checkshouji(){
	var shouji=document.getElementById("shouji1").value;
	if(shouji!="")
	{
	 document.getElementById("shouji").innerHTML="√";
	 
    }
		 else{
	 document.getElementById("shouji").innerHTML="手机不能为空";
	 return false;
			 }
	}
function focusshouji(){
	 document.getElementById("shouji").innerHTML="";
	}
function checkall(){
	if (checkyouxiang()==false) return false;
	if (checkshouhuoren()==false) return false;
	if (checkxiangxidizhi()==false) return false;
	if (checkyouzhengbianma()==false) return false;
	if (checkshouji()==false) return false;
	}
	
	
window.onload=function(){
		document.getElementById("youxiang1").onblur=checkyouxiang;
		document.getElementById("youxiang1").onfocus=focusyouxiang;
		document.getElementById("shouhuoren1").onblur=checkshouhuoren;
		document.getElementById("shouhuoren1").onfocus=focusshouhuoren;
		document.getElementById("xiangxidizhi1").onblur=checkxiangxidizhi;
		document.getElementById("xiangxidizhi1").onfocus=focusxiangxidizhi;
		document.getElementById("youzhengbianma1").onblur=checkyouzhengbianma;
		document.getElementById("youzhengbianma1").onfocus=focusyouzhengbianma;
		document.getElementById("shouji1").onblur=checkshouji;
		document.getElementById("shouji1").onfocus=focusshouji;
}

</script>
</head>
<body>
 

<!--这是核对信息 top开始-->
       <div id="top">
        <table width="900" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="323" rowspan="3"><a href="#"><img src="images/logo.png" width="304" height="39" border="0" /></a></td>
                <td width="124" rowspan="3">&nbsp;</td>
                <td width="453">&nbsp;</td>
              </tr>
              <tr>
                <td><img src="images/daohang2.gif" width="438" height="27" /></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
              </tr>
        </table>
        <hr />
       </div>
<!--这是核对信息 top结束-->
  <form id="queren" action="user/login_checkUserAddress" method="post" onsubmit="return checkall()";>
         
<!--这是核对信息 main开始-->
<div id="tianxieheduixinxi">
    <div id="tianxieheduixinxi_main_1">
            <table width="900" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="222"><font color="#FF0000"><h3><strong>填写核对订单信息</strong></h3></font></td>
                <td width="678"><font size="-1">填写并确认以下信息，然后提交订单</font></td>
              </tr>
            </table>
    </div>
    <div id="tianxieheduixinxi_main_2">
    <div id="tianxieheduixinxi_main_2_1"><img src="images/xinxi_shouhuodizhi.gif" width="105" height="22" /></div>
   

        <table width="801"  height="234" border="0" cellspacing="0" cellpadding="0" align="center">
              <tr>
                <td width="116" height="30"><font color="#FF0000">*</font> <font size="-1">收件邮箱：</font></td>
                <td colspan="3">
                  <label>
                    <input type="text" name="uaEmail" id="youxiang1" />
                  </label>
                <span id="youxiang" class="tishineirong"></span></td>
              </tr>
              <tr>
                <td height="30"><font color="#FF0000">*</font><font size="-1"> 收 货 人：</font></td>
                <td colspan="3">
                  <label>
                    <input type="text" name="uaName" id="shouhuoren1" />
                  </label>
               
                <span id="shouhuoren" class="tishineirong"></span></td>
              </tr>
              <tr>
                <td height="30"><font color="#FF0000">*</font> <font size="-1">省 市 区：</font></td>
                <td colspan="3">
<table width="298">
	<tr>
	  <th align="left">
	    <select id="region1" name="region1"></select>
	    <select id="region2" name="region2"></select>
	    <select id="region3" name="region3"></select>		  
        </th>
	  </tr>
	</table>
</td>
              </tr>
              <tr>
                <td height="30"><dl>
                  <dt><font color="#FF0000">*</font> <font size="-1">详细地址：</font></dt>
                </dl></td>
                <td colspan="3">
                  <label>
                    <input type="text" name="textfield3" id="xiangxidizhi1" />
                  </label>
                <span id="xiangxidizhi" class="tishineirong"></td>
              </tr>
              <tr>
                <td height="30"><font color="#FF0000">* </font><font size="-1">邮政编码：</font></td>
                <td colspan="3">
                  <label>
                    <input type="text" name="uaCode" id="youzhengbianma1" />
                  </label>
                  <span id="youzhengbianma" class="tishineirong"></span>
                </td>
              </tr>
              <tr>
                <td height="30"><font color="#FF0000">* </font><font size="-1">手  机：</font></td>
                <td width="277">
                  <label>
                    <input type="text" name="textfield5" id="shouji1" />
                  </label>
                  <span id="shouji" class="tishineirong"></span>
                </td>
                <td width="71" height="39"><font size="-1">固定电话：</font></td>
                <td width="337">
                  <label>
                    <input type="text" name="textfield6" id="textfield6" />
                  </label>
                </td>
              </tr>
              <tr>
                <td colspan="4" align="right"><a href="#"></a></td>
              </tr>
        </table>
      <hr  color="#dddddd"  />
      
    <div id="tianxieheduixinxi_main_3"><img src="images/xinxi_zhifufangshi.gif" width="166" height="22" /> </div>
    <div id="tianxieheduixinxi_main_3_1">
<table width="900" height="30" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><font color="#CCCCCC">未选择</font></td>
              </tr>
      </table>
        <hr color="#dddddd" />
    </div>
    <div id="tianxieheduixinxi_main_3_2">
<table width="900" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td width="115"><img src="images/xinxi_shangpinxinxi.gif" width="107" height="20" /></td>
                <td width="785"><a href="wodegouwuche.html"><img src="images/xinxi_fanhuigouwuche.gif" width="170" height="20"  border="0"/></a></td>
              </tr>
      </table>
    </div>
    <div id="tianxieheduixinxi_main_3_3">
     <table width="860"  height="108" border="0" cellspacing="0" cellpadding="0" bordercolor="#dddddd" id="tb">
              <tr>
                <td width="116" height="28"  bgcolor="#dddddd" >&nbsp;</td>
                <td width="163"  bgcolor="#dddddd">商品名称</td>
                <td width="122"  bgcolor="#dddddd">&nbsp;</td>
                <td width="76"  bgcolor="#dddddd">麦包价</td>
                <td width="75"  bgcolor="#dddddd">数量</td>
                <td width="93"  bgcolor="#dddddd">优惠</td>
                <td width="83"  bgcolor="#dddddd">小计</td>
                <td width="130"  bgcolor="#dddddd">预计发货仓库</td>
              </tr>
              <tr>
                <td ><img src="images/01.jpg" width="111" height="124" /></td>
                <td colspan="2">[卓妮尔]灵动春夏系列珠片褶皱手提包 </td>
                <td>￥1828</td>
                <td>1</td>
                <td>￥1100</td>
                <td>￥728</td>
                <td>天津仓</td>
              </tr>
        </table>
    </div>
    <div id="tianxieheduixinxi_main_3_4">
        <table width="900" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td> <input name="" type="checkbox" value="" />使用优惠券/现金券</td>
              </tr>
              <tr>
                <td><input name="" type="checkbox" value="" />使用礼品券</td>
              </tr>
        </table>
        <hr color="#dddddd" />
    </div>

    <div id="tianxieheduixinxi_main_4"><img src="images/xinxi_jiesuanxinxi.gif" width="110" height="21" />
    <div id="tianxieheduixinxi_main_4_1">
        <table width="900" height="60"  border="0" cellspacing="0" cellpadding="0"  >
              <tr>
                <td align="right" >商品件数：1件 合计重量：2.06kg 商品金额：￥ 1868.00 运费：￥ 0.00 - 优惠：￥ 1100.00 </td>
          </tr>
                <tr>
                <td align="right" bordercolor="#FFCC33"><font color="#FF0000">应付总金额：￥768.00</font></td>
             </tr>
        </table>
     </div>
     <div id="tianxieheduixinxi_main_4_3">
<table width="900" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td height="70">&nbsp;</td>
          </tr>
        </table>
        <hr color="#dddddd" />

     </div>
     </div>

    
    
    
    
       <div id="tianxieheduixinxi_main_5">
<table width="900" border="0" cellspacing="0" cellpadding="0" align="right">
              <tr>
                <td align="right"><input type="submit" name="querenshouhuorenxinxi" id="querenshouhuorenxinxi" value="确认收货人信息" /></td>
              </tr>
        </table>
      
      </div>
</div>
  </form>
<!--这是核对信息 main结束-->

 <!--这是核对信息 footer开始-->
   <div id="heduixinxi_footer">

        <table width="900" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td><img src="images/shoucang_foot_1.gif" width="180" height="41" /></td>
                <td><img src="images/shoucang_foot_2.gif" width="180" height="41" /></td>
                <td><img src="images/shoucang_foot_3.gif" width="180" height="41" /></td>
                <td><img src="images/shoucang_foot_4.gif" width="180" height="41" /></td>
                <td><img src="images/shoucang_foot_5.gif" width="180" height="41" /></td>
              </tr>
        </table>
    </div>
        <div>
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

<!--这是核对信息 footer结束-->
 
 