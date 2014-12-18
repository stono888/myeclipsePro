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
	<h1>Javabean的四个作用域范围</h1>
	<hr>
	user:<jsp:getProperty property="username" name="myUser"/>
	<br>
	pass:<jsp:getProperty property="password" name="myUser"/>
	<br>
	<%-- 
	<hr>
	user:<%=((User)application.getAttribute("myUser")).getUsername() %>
	<br>
	pass:<%=((User)application.getAttribute("myUser")).getPassword() %>
	<br>
	user:<%=((User)session.getAttribute("myUser")).getUsername() %>
	<br>
	pass:<%=((User)session.getAttribute("myUser")).getPassword() %>
	<br>
	--%>
	<%--
	user:<%=((User)request.getAttribute("myUser")).getUsername() %>
	<br>
	pass:<%=((User)request.getAttribute("myUser")).getPassword() %>
	<br>
	 --%>
	 <%
	 	String username = "";
	 	String password = "";
	 	if(pageContext.getAttribute("myUser")!=null){
	 		username = ((User)pageContext.getAttribute("myUser")).getUsername();
	 		password =((User)pageContext.getAttribute("myUser")).getPassword();
	 	}
	  %>
	用户名：<%=username %>
	<br>
	密码：<%=password %>
</body>
</html>
