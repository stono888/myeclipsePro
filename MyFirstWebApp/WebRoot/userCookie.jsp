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
					System.out.println("before decode:"+username);
					username = URLDecoder.decode(username, "utf-8");
					System.out.println("after decode:"+username);
				}
				if( c.getName().equals("password")){
					password = c.getValue();
				}
			}
		}
 %>
	<h1>用户信息</h1>
	<hr>
		用户名： <%=username%> <br>
		密码： <%=password%> <br>
		
</body>
</html>
