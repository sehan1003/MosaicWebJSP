<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestHeader.jsp</title>
</head>
<body>
	<%= request.getHeader("User-Agent") %><!-- Header을 읽어온다 --><br>
	${header.User-Agent}<br>
	${header["User-Agent"]}<br>	

</body>
</html>