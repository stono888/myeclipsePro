<%@page import="com.srie.po.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
	<%
	request.setCharacterEncoding("utf-8");
	 %>
	<jsp:useBean id="loginUser" class="com.srie.po.User"></jsp:useBean>
	<jsp:useBean id="userDAO" class="com.srie.dao.UserDAO"></jsp:useBean>
	<<jsp:setProperty property="*" name="loginUser"/>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
	if(userDAO.userLogin(loginUser)){
		session.setAttribute("loginuser", loginUser.getUsername());
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
	}else{
		response.sendRedirect("login_failure.jsp");
	}
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
</body>
</html>
