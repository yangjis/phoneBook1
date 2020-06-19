<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import = "com.javaex.vo.PersonVo" %>
<%@page import = "com.javaex.dao.PhoneDao" %>

<%
	String person_id = request.getParameter("person_id");
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personDeletSe(Integer.parseInt(person_id));
	
	response.sendRedirect("./list.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

</body>
</html>