<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'login.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
<%
		request.setCharacterEncoding("utf-8");
		String username = "";
		String password = "";
		Cookie [] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0){
			for(Cookie c: cookies){
				if(c.getName().equals("username") ){
					username = c.getValue();
					username = URLDecoder.decode(username, "utf-8");
					System.out.println(username);
				}
				if( c.getName().equals("password")){
					password = c.getValue();
				}
			}
		}
 %>
	<h1>用户登录</h1>
	<hr>
	<form action="dologinCookie.jsp" name="loginForm" method ="post">
		用户名：<input type="text" name="username" value="<%=username%>"><br>
		密码：<input type="password" name="password" value="<%=password%>"><br>
		记住用户名密码：<input type="checkbox" name="isUserCookie" checked="checked" >
		<input type="submit">
		
	</form>
</body>
</html>
