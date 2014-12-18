<%@page import="java.net.URLEncoder"%>
<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setCharacterEncoding("utf-8");
	//首先判断用户是否选择了记住登录对象
	String [] isUseCookies = request.getParameterValues("isUserCookie");
	String username = "";
	String password = "";
	if(isUseCookies!=null && isUseCookies.length>0){
		username = request.getParameter("username");
		password = request.getParameter("password");
		out.println(username+"<hr>");
		System.out.println("之前before encode:"+username);
		username = URLEncoder.encode(username, "utf-8");
		System.out.println("之後after encode:"+username);
		//使用URLEncoder解決無法在cookie中保存中文字符串的問題；
		password = URLEncoder.encode(password, "utf-8");
		
		Cookie usernameCookie = new Cookie("username",username);
		Cookie passwordCookie = new Cookie("password",password);
		usernameCookie.setMaxAge(864000);
		passwordCookie.setMaxAge(864000);
		response.addCookie(usernameCookie);
		response.addCookie(passwordCookie);
	} else {
		Cookie [] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0){
			for(Cookie c: cookies){
				if(c.getName().equals("username") || 
				c.getName().equals("password")){
					c.setMaxAge(0);//設置cookie失效
					response.addCookie(c);
				}
			}
		}
	}
%>
<a href="userCookie.jsp" >userCookie.jsp</a>
