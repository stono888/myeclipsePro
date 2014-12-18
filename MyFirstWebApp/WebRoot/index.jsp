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
	<h1>Hello ,this is my first JSP page!</h1>
	<hr>
	<!-- 我是html注释 -->
	<%--我是jsp注释 --%>
	<%!String s = "张三";

	int add(int x, int y) {
		return x + y;
	}%>
	<%
		//单行注释
		/*
		 * 多行注释
		 */
		out.println("大家好！欢迎大家学习javaee开发！");
	%>
	<br> 你好，<%=s%><br> x+y =
	<%=add(10, 5)%>
	<br>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
		String s = sdf.format(new Date());
	%>
	今天是<%=s%>
	<hr>
	<%
		jspPrint(out);
	%>
	<%!void jspPrint(JspWriter out) {
		try {
			for (int i = 1; i < 10; i++) {
				for (int j = 1; j <= i; j++) {
					String s1 = i + "x" + j + "=" + (i * j) + "&nbsp;&nbsp;";
					out.print(s1);
				}
				out.print("<br>");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}%>
</body>
</html>
