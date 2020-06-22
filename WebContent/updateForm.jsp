<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import = "com.javaex.dao.PhoneDao" %>
<%@page import = "com.javaex.vo.PersonVo"%>
    
<%
	PhoneDao phoneDao = new PhoneDao();
	String person_id = request.getParameter("person_id");
	PersonVo personVo = phoneDao.getPerson(Integer.parseInt(person_id));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 수정</title>
</head>
<body>
	<h1>주소록 수정</h1>
	<form action="./updatePerson.jsp" mathod="get">
		<input type = "hidden" name = "person_id" value="<%=person_id %>">
		<label name = "name">이름(name) 
		<input type = "text" name = "name" value="<%=personVo.getName()%>"></label><br>
		
		<label name = "hp">휴대전화(hp)
		<input type = "text" name = "hp" value = "<%=personVo.getHp()%>"></label><br>
		
		<label name = "company">회사 번호(company)
		<input type = "text" name = "company" value = "<%=personVo.getCompany()%>"></label><br>
	
		<button type = submit>수정</button>
	</form>
	
	<br>
	
	<a href="./list.jsp">전화번호 리스트</a>

</body>
</html>