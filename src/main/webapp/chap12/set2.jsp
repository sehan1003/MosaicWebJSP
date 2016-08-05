<%@page import="com.hybrid.domain.Dept"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set.jsp</title>
</head>
<body>
<c:set var="Dept" value="<%=new Dept() %>" />
<c:set target="${Dept}" property="deptno" value="65" />
<c:set target="${Dept}" property="dname" value="총무부" />
<c:set target="${Dept}" property="loc" value="서울" />

<%
	pageContext.setAttribute("dept", new Dept());
	((Dept)(pageContext.getAttribute("Dept"))).setDeptno(65);
	((Dept)(pageContext.getAttribute("Dept"))).setDname("개발부");
	((Dept)(pageContext.getAttribute("Dept"))).setLoc("부산");
%>
pageScope.Dept = ${pageScope.Dept}<br>
Dept = ${Dept}<br>
Dept.deptno = ${Dept.deptno}<br>
Dept.dname = ${Dept.dname}<br>
Dept.loc = ${Dept.loc}<br>
</body>
</html>