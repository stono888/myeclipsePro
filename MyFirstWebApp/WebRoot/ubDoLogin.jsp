<%@page import="com.srie.po.User"%>
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
<jsp:useBean id="myUser" class="com.srie.po.User" scope="page"></jsp:useBean>
	<h1>setProperty使用方法</h1>
	<hr>
	<%--
	<jsp:setProperty property="*" name="myUser"/>
	 <jsp:setProperty property="username" name="myUser"/>
	 <jsp:setProperty property="username" name="myUser" value="lisi"/>
	 <jsp:setProperty property="password" name="myUser" value="888888"/>
	 --%>
	 <jsp:setProperty property="username" name="myUser"/>
	 <jsp:setProperty property="password" name="myUser" param="mypass"/>
	 
	<hr>
	<%-- 
	用户名：<%=myUser.getUsername() %><br>
	密码：<%=myUser.getPassword() %>
	--%>
	用戶名：<jsp:getProperty property="username" name="myUser"/>
	<br>
	密碼：<jsp:getProperty property="password" name="myUser"/>
	<br>
	<a href="testScope.jsp">test scope</a>
	<%
		request.getRequestDispatcher("testScope.jsp").forward(request, response);
	 %>
</body>
</html>
