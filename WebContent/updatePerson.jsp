<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import = "com.javaex.vo.PersonVo" %>
<%@page import = "com.javaex.dao.PhoneDao" %>

<%
	String person_id = request.getParameter("person_id");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	PersonVo personVo = new PersonVo((Integer.parseInt(person_id)), name, hp, company);
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personUpdate(personVo);
	
	response.sendRedirect("./list.jsp");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 수정</title>
</head>
<body>

</body>
</html>