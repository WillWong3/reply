<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
    String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body >
                 <div class="top_left">
	                <div id="Clock" align="center" ></div>
						<script>
						

                           function tick() 
                           {
                           var hours, minutes, seconds, xfile;
                           var intHours, intMinutes, intSeconds;
                           var today, theday;
                           today = new Date();
                           function initArray(){
                           this.length=initArray.arguments.length
                           for(var i=0;i<this.length;i++)
                           this[i+1]=initArray.arguments[i] }
                           var d=new initArray(
                           " 星期日",
                           " 星期一",
                           " 星期二",
                           " 星期三",
                           " 星期四",
                           " 星期五",
                           " 星期六");
                           theday =   [today.getMonth()+1]+"月" +today.getDate()+"日" + d[today.getDay()+1];
                           intHours = today.getHours();
                           intMinutes = today.getMinutes();
                           intSeconds = today.getSeconds();
                           if (intHours == 0) 
                           {
	                           hours = "12:";
	                           xfile = " 午夜 ";
                           } 
                           else if (intHours < 12) 
                           {
	                           hours = intHours+":";
	                           xfile = " 上午 ";
                           } else if (intHours == 12)
                           {
	                           hours = "12:";
	                           xfile = " 正午 ";
                           } else 
                           {
	                           intHours = intHours - 12
	                           hours = intHours + ":";
                           	   xfile = " 下午 ";
                           }
                           if (intMinutes < 10) {
                           minutes = "0"+intMinutes+":";
                           } else {
                           minutes = intMinutes+":";
                           }
                           if (intSeconds < 10) {
                           seconds = "0"+intSeconds+" ";
                           } else {
                           seconds = intSeconds+" ";
                           }
                           timeString = theday+xfile+hours+minutes+seconds;
                           Clock.innerHTML = timeString;
                           window.setTimeout("tick();", 100);
                           }
                           window.onload = tick;  
                       </script>
	                </div>
	                <div class="top_right">
	                    <span class="indexhtml">
						    <!-- 111 -->
						</span>
	                    <span class="fav">
	                        <!-- 111 -->
	                    </span>
	                    <span class="helptext">
	                        <a target="_top" style="font-family: 微软雅黑" href="javascript:window.external.AddFavorite('http://localhost:8888/moban','11111111111')">加入收藏</a> 
	                        &nbsp;&nbsp;
	                        <!-- <a href="#" style="font-family: 微软雅黑">注册</a> 
	                        &nbsp;&nbsp;
	                        <a href="#" style="font-family: 微软雅黑">登录</a> -->
	                    </span>
	                </div>
	             </div>
	             <div class="logodiv">
	           	    <div class="logo" style="font-family: 微软雅黑;font-size: 25px;margin-top:50px;">
	               		    在线答疑系统&nbsp;
	                </div>
	             </div>
	             <div class="nav">         
	                 <ul>    
		                <li><a href="<%=path %>/index.action">首页</a></li>
		                <li><a href="<%=path %>/qiantai/user/userReg.jsp">用户注册</a></li>
		                
		                <c:if test="${sessionScope.userType!=1}"> 
		                <li><a href="<%=path %>/qiantai/user/userLogin.jsp">用户登录</a></li>
		                </c:if>
		                
		                <c:if test="${sessionScope.userType==1}"> 
		                <li><a href="#">欢迎你：${sessionScope.user.name}</a></li>
		                <li>
		                <c:if test="${sessionScope.user.type==1}"><a href="#">老师</a></c:if>
		                <c:if test="${sessionScope.user.type==2}"><a href="#">同学</a></c:if>
		                </li>
		                <li><a href="<%=path %>/userLogout.action">注销退出</a></li>
		                </c:if>
		                
	                 </ul>
	             </div> 
			     <div class="navb" style="margin-top: 5px;"></div>  
  </body>
</html>
