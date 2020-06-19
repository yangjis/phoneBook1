<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.javaex.vo.PersonVo" %>
<%@page import = "com.javaex.dao.PhoneDao" %>
    
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	PersonVo personVo = new PersonVo(name, hp, company);
	
	PhoneDao phoneDao = new PhoneDao();
	System.out.println(phoneDao.personInsert(personVo));
	
	response.sendRedirect("./list.jsp");
 %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전화번호를 등록하였습니다.</title>
</head>
<body>
	
</body>
</html>