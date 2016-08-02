<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="/error/viewErrorMessage.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Parameter OutPut</title>
</head>
<body>
	name's Parameter Value : <%= request.getParameter("name").toUpperCase() %>
</body>
</html>