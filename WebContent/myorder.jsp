<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>窝窝团</title>
		<link rel="stylesheet" href="css/basic.css" type="text/css" />
		 <link rel="short icon"  href="back/img/logoicon.png"  />
		<script  type="text/javascript"  src="js/jquery-1.12.4.js"></script>
        <script  type="text/javascript"  src="js/userinfo.js"></script>

		
	</head>
  

  
  <style>
  tr td{
  	height:40px;
  }
  
.fl{float:left;}
.fr{float:right;}
  
  
.catbox{width:940px;margin:0px auto;}
.catbox table{text-align:center;width:99%;}
.catbox table th,.catbox table td{border:1px solid #CADEFF;}
.catbox table th{background:#e2f2ff;border-top:3px solid #a7cbff;height:30px;}
.catbox table td{padding:10px;color:#444;}
.catbox table tbody tr:hover{background:RGB(238,246,255);}
		.checkbox{width:50px;}
.check-all{ vertical-align:middle;}
.goods{width:300px;}
.goods span{width:180px;margin-top:20px;text-align:left;float:left;}
.goods img{width:100px;height:80px;margin-right:10px;float:left;}
.price{width:250px;}
.nums{width:100px;}
.count .add, .count input, .count .reduce{float:left;margin-right:-1px;position:relative;z-index:0;}
.count .add, .count .reduce{height:23px;width:17px;border:1px solid #e5e5e5;background:#f0f0f0;text-align:center;line-height:23px;color:#444;}
.count .add:hover, .count .reduce:hover{color:#f50;z-index:3;border-color:#f60;cursor:pointer;}
.count input{width:50px;height:15px;line-height:15px;border:1px solid #aaa;color:#343434;text-align:center;padding:4px 0;background-color:#fff;z-index:2;}
.subtotal{width:150px;color:red;font-weight:bold;}
.operation span:hover,a:hover{cursor:pointer;color:red;text-decoration:underline;}
.foot{margin-top:0px;color:#666;height:48px;border:1px solid #c8c8c8;border-top:0;background-color:#eaeaea;background-image:linear-gradient(RGB(241,241,241),RGB(226,226,226));position:relative;z-index:8;}
.foot div, .foot a{line-height:48px;height:48px;}
.foot .select-all{width:80px;height:48px;line-height:48px;color:#666;text-align:center;}
.foot .delete{padding-left:10px;}		
	

	</style>
  
  
  
	<body id="index">
    	<div id="headTop">
        	<ul class="headTopUl clearfix">
                <li class="headTopUser">
                	<ul class="headTopList clearfix">
                		<li class="headRelat listmore">
                			<em class="moreico">woico</em>
                			<a class="Gray7" href="#">更多</a>
                			<b class="triangleT">triangle</b>
                			<ul class="ulbox linkmorbox">
                                <li>
                                	<a href="#">手机版下载</a>
                                </li>
                                <li>
                                	<a id="addEmailBtn" href="#">邮件订阅</a>
                                </li>
                                <li>
                                	<a href="#">收藏本站</a>
                                </li>
                            </ul>
                			<b class="bh whiteBor">遮盖</b>
                		</li>
                        <li class="headRelat listsec">
                            <a class="Gray7" href="#">关注</a>
                            <b class="triangleT">triangle</b>
                            <ul class="ulbox linkBoxsec">
                                <li>
                                	<a class="wowo-sina" href="#" target="_blank" title="窝窝团新浪微博">窝窝团新浪微博</a>
                                </li>
                                <li>
                                	<a class="wowo-qq" href="#" target="_blank" title="窝窝团腾讯微博">窝窝团腾讯微博</a>
                                </li>
                                <li>
                                	<a class="wowo-sina" href="#" title="窝窝团新浪客服微博" target="_blank">窝窝团新浪客服微博</a>
                                </li>
                            </ul>
                            <b class="bh whiteBor">遮盖</b>
                        </li>
                        <li class="headRelat headline">
                        	<em class="l-ico"></em>
                        </li>
                        <li class="headRelat list">
                        	<em class="woico">woico</em>
                        	<a class="Gray7" rel="nofollow" href="#">我的窝窝</a>
                        	<b class="triangleT">triangle</b>
                        	<ul class="ulbox linkBox">
                                <li>
                                	<a rel="nofollow" href="myorder.jsp">我的订单</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="shopcart.jsp">我的购物车</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">我的积分</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">我的评价</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">帐号设置</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">账户余额</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">代金券</a>
                                </li>
                                <li>
                                	<a rel="nofollow" href="#">消息中心</a>
                                </li>
                            </ul>
                        	<b class="bh whiteBor">遮盖</b>
                        </li>
                    </ul>
                </li>
                <li class="headTopLogin">
                	<span class="Gray7"  id="index_loginuser">
               
                	</span>
                	<!-- <span id="topusername" class="yellowd1">
						您好，<a class="yellowd1" href="" id="uname"></a>
						&nbsp;
						<a class="Gray7" href="javascript:void"  id="loginout">退出</a>
						<b class="borderdc p_0_10">|</b>
					</span>
 -->                    <ul class="clearfix">
                    	<li id="msgCount" class="headTopUlist no">
                    		<em class="messico">messico</em>
                    		<a class="Gray7" rel="nofollow" href="#">消息</a>
                    	</li>
                    	<b class="borderdc p_1_10">|</b>
                    </ul>
					<a id="integration" href="#">
                		<em></em>
                		领积分抵钱
                	</a>
                	&nbsp;&nbsp;&nbsp;
                	<a href="back/login.html"  target="_blank" >卖家入口</a>
                </li>
            </ul>
        </div>
        <div id="headMin">
        	<ul class="headConul clearfix">
				<li class="logoLi">
					<a gae="click_logo" href="#">
						<h1 class="bh logo">窝窝团</h1>
					</a>
				</li>
				<li class="wowoTitLi">
                    <a gae="click_slogan" href="#">
                        <h2 class="bh wowoTit">精挑细选</h2>
                    </a>
				</li>
                <li class="cityBox">
                	<h2 id="cityname" class="cityName">衡阳</h2>
                    <span class="cityLink">
                    【<a class="Gray5a" href="#" gae="city_list">切换城市</a>】
                    </span>
                	<span id="show_city" class="cityTs">
                        <b class="triangbor">三角</b>
                        <a id="ipClose" class="closeTs" href="#">关闭</a>
                        您是不是在
                        <em id="ipcityname" class="bluec4">衡阳</em>
                        ？点击可选择其他城市
                	</span>
                </li>
				<li class="searchLi ">
					<div class="searchlf">
						<span class="tri"></span>
                        <div class="hd">
                            <a class="on deal" href="#">团购</a>
                            <a class="shoper" href="#">商家</a>
                        </div>
					</div>
					<form id="soso_form" method="get" action="">
						<input class="searchTxt" type="text" autocomplete="off" maxlength="140" name="w" value="请输入商品名、地址">
						<a id="soso_submit" class="searchBtn" href="#">搜索</a>
						<input id="sg_from" type="hidden" name="sg_from" value="1">
						<input id="searchType" type="hidden" name="searchType" value="0">
					</form>
                    <div class="hotkey" style="display:block" data-title="data_T">
                        <a target="_self" href="#">月饼</a>
                        <a class="on" target="_self" href="#">KTV</a>
                        <a target="_self" href="#">蛋糕</a>
                        <a target="_self" href="#">希朵曼</a>
                        <a target="_self" href="#">万达</a>
                        <a target="_self" href="#">水上乐园</a>
                    </div>
                    <div class="hotkey" data-title="data_S" style="display: none;">
                        <a target="_self" href="#">月饼</a>
                        <a class="on" target="_self" href="#">KTV</a>
                        <a target="_self" href="#">蛋糕</a>
                        <a target="_self" href="#">希朵曼</a>
                        <a target="_self" href="#">万达</a>
                        <a target="_self" href="#">水上乐园</a>
                    </div>
                    <div class="searchBox">
                    	<p class="searchTip">最近搜索过 </p>
                    	<ul class="clearfix"> </ul>
                    </div>
				</li>
				<li id="userPointDiv" class="pointnum">
					<b class="triangbor">三角</b>
					<span class="Gray7">
						积分：<strong id="userPointStrong" class="red21"></strong>
					</span>
				</li>
			</ul>
        </div>
        <div id="headNav">
            <ul id="navList" class="navUl clearfix">
                <li class="first_nav" date-nav="index">
                	<a href="#">团购精选</a>
                </li>
                <li date-nav="shangcheng">
                	<a href="#">窝窝商城</a>
                </li>
                <li class="zIndex2" date-nav="shenbian">
                	<a href="#">身边</a>
                </li>
                <li date-nav="meishi">
                	<a href="#">美食</a>
                </li>
                <li date-nav="yule">
                	<a href="#">娱乐</a>
                </li>
                <li class="zIndex" date-nav="dianying">
                	<a href="#">电影</a>
                </li>
                <li date-nav="meirongbaojian">
                	<a href="#">美容保健</a>
                </li>
                <li date-nav="shenghuofuwu">
                	<a href="#">生活服务</a>
                </li>
                <li date-nav="jiehun">
                	<a href="#">结婚</a>
                </li>
                <li date-nav="lvyou">
                	<a href="#">旅行</a>
                </li>
                <li date-nav="jiudian">
                	<a href="#">酒店</a>
                </li>
                <li date-nav="shangpin">
                	<a href="#">网购</a>
                </li>
                <li date-nav="shop">
                	<a href="#">品牌汇</a>
                </li>
            </ul>
        </div>
        
        <div id="payprocess">
			<h1>我的订单</h1>
			<div class="catbox">
  				<table id="cartTable">
    				<thead>
    					<tr>
							<c:if test="${empty orders}">
    							您还没有购买任何商品
    						</c:if>
				   			 </tr>
    </thead>
    <tbody>
    <c:if test="${!empty orders}">
    		<tr>
    			 <th><label><input class="check-all check" type="checkbox"/>&nbsp;&nbsp;全选</label></th>
    			<th>订单编号</th>
    			<th>总价格</th>
    			<th>总数量</th>
    			<th>状态</th>
    			<th>操作</th>
    		</tr>
    		<c:forEach items="${orders}" var="o" varStatus="vs">
    	
    				
    				<tr>
				        <td class="checkbox"><input class="check-one check" type="checkbox"  /></td>
				        <td class="price">${o.ordernum}</td>
				        <td class="nums">${o.price}</td>
				        <td class="nums">${o.nums}</td>
				        <td class="status">${o.statusStr } </td>
				        <td class="operation">
					        <c:choose>
		    					<c:when test="${o.status==0}">
		    						<a href="${pageContext.request.contextPath}/pay.jsp?ordernum=${o.ordernum}&price=${o.price}">去付款</a>
		    					</c:when>
		    					<c:when test="${o.status==1}">
		    						<a href="#" >已支付</a>
		    					</c:when>
		    					<c:when test="${o.status==2}">
		    						 <a href="#" >再来一单</a>
		    					</c:when>
		    					<c:when test="${o.status==3}">
		    						 <a href="#" >重新下单</a>
		    					</c:when>
					        </c:choose>
					        </td>
     				 </tr>
    				
    				
    		</c:forEach>
    		
    			
    	   </tbody>
    	   
  </table>
    </c:if>
		  <div class="foot" id="foot">
    <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;&nbsp;全选</label>
  </div>	
		</div>
        
        <div id="footer">
            <div class="bottom-box clearfix">
                <div class="boul">
                	<ul class="boul-list">
                		<li class="li-x">
                			<h2 class="">用户帮助</h2>
                		</li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">玩转窝窝</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">常见问题</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">秒杀规则</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">积分规则</a>
                        </li>-
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">代金券说明</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">评价说明</a>
                        </li>
                	</ul>
                	<b class="ico"></b>
                </div>
                <div class="boul">
                    <ul class="boul-list">
                        <li class="li-x">
                        	<h2 class="h2-1">获取更新</h2>
                        </li>
                        <li>
                        	<a class="bolist-a" href="#" target="_blank">窝窝团新浪微博</a>
                        </li>
                        <li>
                        	<a class="bolist-a" href="#" target="_blank">窝窝团腾讯微博</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">手机版下载</a>
                        </li>
                    </ul>
                	<b class="ico ico2"></b>
                </div>
                <div class="boul">
                    <ul class="boul-list">
                        <li class="li-x">
                        	<h2 class="h2-2">商务合作</h2>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">商家入驻</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">提供团购信息</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">友情链接</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">开放API </a>
                        </li>
                    </ul>
                    <b class="ico ico3"></b>
                </div>
                <div class="boul">
                    <ul class="boul-list">
                        <li class="li-x">
                        	<h2 class="h2-3">公司信息</h2>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">关于我们</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">媒体报道</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">加入我们</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">隐私声明</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">用户协议</a>
                        </li>
                        <li>
                        	<a class="bolist-a" rel="nofollow" href="#">营业执照</a>
                        </li>
                    </ul>
                    <b class="ico ico4"></b>
                </div>
                <div class="kefu">
                	<div class="kefu-bottom">
                		<h2 class="kh2-0 bh">不满意就退款</h2>
                		<h2 class="kh2-1">24小时客服热线</h2>
                		<h2 class="kh2-2 bh">400-105-5555</h2>
                		<a class="bh kfwwweibo" target="_blank" href="#">窝窝团客服微博</a>
                	</div>
                </div>
            </div>
        </div>
        <div class="footer-btm">
			<div class="footer">
				&copy; 2010-2014 55tuan.com 京ICP证100702号 京公海网安备110108000829号&nbsp; 
				<a target="_blank" href="#">营业执照</a>
			</div>
			<div class="footer">名称：北京窝窝团信息技术有限公司&nbsp;&nbsp;&nbsp;&nbsp;地址 ：北京市海淀区上地信息路18号三层3001&nbsp;&nbsp;&nbsp;&nbsp;电话 ：010-59065200</div>
			<div class="footer">营业执照注册号 ：110108011056221&nbsp;&nbsp;&nbsp;&nbsp;食品流通许可证：SP1101081110124921</div>
			<div class="wowofawu">
                <a class="fawu-1" rel="nofollow" href="#">支付宝</a>
                <a class="fawu-3" rel="nofollow" href="#" target="_blank">可信网站</a>
                <a class="fawu-5" rel="nofollow" href="#" target="_blank">经营性网站备案信息</a>
            </div>
        </div>
       <div id="ritfllow" style="position: fixed; bottom: 60px; right:30px;">
           <a class="gotopBtn" href="#" style="visibility: none; height: 38px;" >top</a>
			<div class="mobileBtn" style="visibility: visible; display: block;">
				<div class="codeImg">
					<a gae="click_apr_erweima" target="_blank" href="#">
						<img width="116" height="148" src="images/ritcodes0807.png">
					</a>
				</div>
			</div>
			<!--意见反馈-->
			<a href="#" target="_blank" class="fee_opin" style="border-top-style: none; height: 30px;">意见反馈</a>
			<!--意见反馈-->
		</div>
        <div id="ritCode" style="position: fixed; top: 358px; right: 30px; visibility: visible;">
			
        
			<div class="imgbox">
				<a gae="click_apr_erweima" target="_blank" href="#">
					<img width="108" height="183" src="images/ritcodeb.png">
				</a>
				<a class="cCode" href="#">close</a>
			</div>
		</div>
        
	</body>
</html>



