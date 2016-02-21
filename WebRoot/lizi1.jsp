<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
    <script type="text/javascript">
    
    </script>
  </head>
  
  <BODY text=#000000  leftMargin=0 topMargin=0><a name="top"></a>
	    <TABLE borderColor=#F0F0F0 cellSpacing=0 width="80%" border=1>
	        <TR bgColor=#f0f0f0 height=20>
	          <TD style="TEXT-INDENT: 5px" width="15%" style="font-size: 11px;">1楼</TD>
	          <TD colSpan=2 style="font-size: 11px;">【主题】${requestScope.zhuti.title } </TD>
	        </TR>
	        <TR>
	          <TD vAlign=top align="center" rowSpan=3>
	            <TABLE style="MARGIN-TOP: 3px" height=100% cellSpacing=0 cellPadding=0 width="100%" border=0>
	              <TR>
	                  <TD align="center" width="100%">
	                       <IMG src="<%=path %>/${requestScope.zhuti.user.fujian}" width="90" height="111">
	                  </TD>
	              </TR>
	              <TR>
	                  <TD align="center" width="100%">
	                                                                   账号：${requestScope.zhuti.user.loginname }
	                  </TD>
	              </TR>
	              <TR>
	                  <TD align="center" width="100%">
	                                                                      姓名：${requestScope.zhuti.user.name }
	                  </TD>
	              </TR>
	            </TABLE>
	          </TD>
	        </TR>
	        <TR height=100%>
	          <TD style="PADDING-RIGHT: 9px; PADDING-LEFT: 9px; PADDING-BOTTOM: 9px; PADDING-TOP: 9px" vAlign=top style="font-size: 11px;">
	              <c:out value="${requestScope.zhuti.content}" escapeXml="false"></c:out>
	              <br/><br/>
	              <c:if test="${requestScope.zhuti.fujian!='' }">
	                  ${requestScope.zhuti.fujianYuanshiming}
	                  <a href="#" onClick="down1('${requestScope.zhuti.fujian}','${requestScope.zhuti.fujianYuanshiming}')" style="font-size: 13px;color: red">下载</a>
	              </c:if>
	          </TD>
	        </TR>
	        <TR bgColor=#f9f9f9 height="15">
	          <TD align=right style="font-size: 12px;height: 15px;">
	                                          发表时间：${requestScope.zhuti.shijian }
	              &nbsp;&nbsp;&nbsp;                            
	              <A href="#" onClick="huifu(${requestScope.zhuti.id })" style="font-size: 11px;">回复该贴&nbsp;</A> 
	              <c:if test="${sessionScope.userType==100}">
	              <A href="#" onClick="zhutiDel(${requestScope.zhuti.id })" style="font-size: 11px;">删除&nbsp;</A> 
	              </c:if>
	          </TD>
	        </TR>
	    </TABLE>
  </BODY>
</html>
