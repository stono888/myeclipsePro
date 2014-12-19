<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	System.out.println("dologinForword");
%>
<%--<jsp:forward page="userForward.jsp"></jsp:forward> --%>
<%
	//request.getRequestDispatcher("userForward.jsp").forward(request,
	//		response);
%>
<jsp:forward page="userForward.jsp">
	<jsp:param value="admin@123.net" name="email"/>
	<jsp:param value="888888" name="password"/>
</jsp:forward>
