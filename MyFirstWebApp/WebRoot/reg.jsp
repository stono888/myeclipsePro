<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
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
	<h1>用户注册</h1>
	<hr>
	<form action="response.jsp" name="loginForm" method="post">
		用户名：<input type="text" name="username"><br> 爱好： <input
			type="checkbox" name="favorite" value="read">read <input
			type="checkbox" name="favorite" value="music">music <input
			type="checkbox" name="favorite" value="movie">movie <input
			type="checkbox" name="favorite" value="web">web 密码：<input
			type="password" name="password"><br> <input
			type="submit">

	</form>
	
	<br>
	<br>
	<a href="request.jsp?username=张三">test url</a>
	
</body>
</html>