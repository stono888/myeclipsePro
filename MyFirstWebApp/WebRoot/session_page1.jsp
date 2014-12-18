<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
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

<title>My JSP 'index.jsp' starting page</title>
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
	<h1>session内置对象</h1>
	<hr>
	<%
		SimpleDateFormat sd = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
		Date d = new Date(session.getCreationTime());
		session.setAttribute("username", "tom");
		session.setAttribute("password", "1234");
		session.setAttribute("age", 20);
		
		//设置当前session回话生存期限
		//session.setMaxInactiveInterval(10);//10秒
	
	 %>
	Session创建时间：<%=sd.format(d) %><br>
	Session的ID编号：<%=session.getId() %><br>
	从Session中获取用户名：<%=session.getAttribute("username") %><br>
	<a href="session_page2.jsp" target="_blank">page2</a>
	<%
		//session.invalidate();//销毁
	 %>
</body>
</html>
