<%@page import="com.demo.Dao.DAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean class="com.demo.ENTITY.Student" id="student" />
	<jsp:setProperty property="*" name="student" />
	<%
	boolean b = DAO.inertdata(student);
	if (b) {
		response.sendRedirect("successmessage.jsp");

	}
	%>

</body>
</html>