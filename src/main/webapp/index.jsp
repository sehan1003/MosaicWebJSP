<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index.jsp</title>
</head>
<body>
	<h1>설정 확인</h1>

<hr>
<ol>
   <li><a href="Hello.html"> HTML 확인 </a></li>
   <li><a href="Hello.jsp"> JSP 확인</a></li>
   <li><a href="HelloServlet"> HelloServlet 확인 </a></li>
   <li><a href="Dept.jsp"> Mybatis  확인</a></li>
   <li><a href="cookie/Dept.jsp">Cookie</a>
	<li><a href="session/Dept.jsp">Session Login</a></li>
	<li><a href="logout.jsp">Logout</a></li>
</ol>

</body>
</html>