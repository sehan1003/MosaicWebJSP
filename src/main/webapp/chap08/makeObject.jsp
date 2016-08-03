<%@page import="com.hybrid.domain.MemberInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>makeObject.jsp</title>
</head>
<body>
<jsp:useBean id="member" scope="request" class="com.hybrid.domain.MemberInfo"/>

<%
	member.setId("sehan1003");
	member.setName("박세한");
%>
<jsp:forward page="useObject.jsp" />

</body>
</html>