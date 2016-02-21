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
  </head>
  
  <BODY>
	     <table align="center" border="0" width="70%" cellspacing="1" cellpadding="1">
			<tr height="28">
				<td bgcolor="#FF9797">
					<span style="float:left;color: white;font-size: 11px;">
					   <b style="font-family: 微软雅黑;font-size: 14px;">&nbsp;&nbsp;&nbsp;&nbsp;论坛板块</b>
					</span>
					<span style="float:right;color: white;font-size: 11px;">
					&nbsp;
					</span>
				</td>
			</tr>
			<tr bgcolor="#F9F9F9">
				<td height="60" align="center">
					<table border="0" width="100%" cellspacing="5" cellpadding="5">
						<tr height="40" align="center">
							<td width="30">
								<img src="<%=path %>/img/bankuai.gif">
							</td>
							<td align="left" width="600">
								<div style="font-family: 微软雅黑;font-size: 14px;">论坛板块1</div>
								<div style="font-family: 微软雅黑;font-size: 11px;color: #9D9D9D">论坛板块1论坛板块1</div>
							</td>
							<td>
								<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">帖子数：10</div>
							</td>
							<td>
								<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">版主：刘三</div>
							</td>
						</tr>
						<tr height="40" align="center">
							<td width="30">
								<img src="<%=path %>/img/bankuai.gif">
							</td>
							<td align="left" width="600">
								<div style="font-family: 微软雅黑;font-size: 14px;">论坛板块1</div>
								<div style="font-family: 微软雅黑;font-size: 11px;color: #9D9D9D">论坛板块1论坛板块1</div>
							</td>
							<td>
								<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">帖子数：10</div>
							</td>
							<td>
								<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">版主：刘三</div>
							</td>
						</tr>
						<tr height="40" align="center">
							<td width="30">
								<img src="<%=path %>/img/bankuai.gif">
							</td>
							<td align="left" width="600">
								<div style="font-family: 微软雅黑;font-size: 14px;">论坛板块1</div>
								<div style="font-family: 微软雅黑;font-size: 11px;color: #9D9D9D">论坛板块1论坛板块1</div>
							</td>
							<td>
								<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">帖子数：10</div>
							</td>
							<td>
								<div style="font-family: 微软雅黑;font-size: 13px;color: #9D9D9D">版主：刘三</div>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
  </BODY>
</html>
