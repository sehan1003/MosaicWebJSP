<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>requestParam.jsp</title>
</head>
<body>
	<%= request.getParameter("name") %> <!-- String --><br>
	<%= request.getParameterValues("name")[0] %> <!-- Array --><br>
	<%= request.getParameterValues("name")[1] %> <!-- Array -->

	${param.name}<br>
	${paramValues.name[0]}<br>
	${paramValues.name[1]}<br>
</body>
</html>