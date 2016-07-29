<%@page import="com.hybrid.mapper.EmpMapper"%>
<%@page import="org.springframework.web.context.support.WebApplicationContextUtils"%>
<%@page import="org.apache.catalina.core.ApplicationContext"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emp.jsp</title>
</head>
<body>
	<h1>Emp 테스트</h1>
	<%
		ApplicationContext ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(this.getServletContext());
		EmpMapper mapper = ctx.getBean
	%>

</body>
</html>