<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "com.javaex.vo.PersonVo" %>
<%@page import = "com.javaex.dao.PhoneDao" %>
    
<%
	request.setCharacterEncoding("UTF-8"); //utf-8로 데이터를 해석하여 저장하라.
	String name = request.getParameter("name");//응답받은 파라미터 중 name을 string name에 넣어라
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	PersonVo personVo = new PersonVo(name, hp, company);
	
	PhoneDao phoneDao = new PhoneDao();
	System.out.println(phoneDao.personInsert(personVo));
	
	response.sendRedirect("./list.jsp");// ./list.jsp페이지로 리다이렉트해라 	리다이렉트란? 데이터를 계속 유지하지않고 새페이지로 이동
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