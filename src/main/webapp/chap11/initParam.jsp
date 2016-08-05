<%@page import="org.apache.catalina.Server"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- server.context-parameters.logEnabled = true
	server.context-parameters.debugLevel = 5    application.properties에 설정-->
	<%= application.getInitParameter("logEnabled") %> <br>
	<%= application.getInitParameter("debugLevel") %> <br>
	<%= application.getInitParameter("xxx") %>
	<hr>
	${initParam.logEnabled}<br>
	${initParam.debugLevel}<br>
	${initParam.xxx}<br>
</body>
</html>	