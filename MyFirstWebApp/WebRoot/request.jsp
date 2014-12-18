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
	<h1>request内置对象</h1>
	<%
		request.setCharacterEncoding("utf-8");
		request.setAttribute("password", "123456");
	%>
	userName:<%=request.getParameter("username")%><br> favorite:<%
		if (request.getParameterValues("favorite") != null) {
			String[] fas = request.getParameterValues("favorite");
			for (int i = 0; i < fas.length; i++) {
				out.println(fas[i]);
			}
		}
	%><br>
	密码：<%=request.getAttribute("password") %><br>
	请求体的MIME类型：<%=request.getContentType() %><br>
	协议类型版本号：<%=request.getProtocol() %><br>
	Server:<%=request.getServerName() %><br>
	Port:<%=request.getServerPort() %><br>
	File byte length:<%=request.getContentLength() %><br>
	IP:<%=request.getRemoteAddr() %><br>
	real path:<%=request.getRealPath("request.jsp") %><br>
	context path:<%=request.getContextPath() %><br>
</body>
</html>
