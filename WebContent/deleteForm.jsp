<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import = "com.javaex.dao.PhoneDao" %>
<%@page import = "com.javaex.vo.PersonVo"%>
<%@page import = "java.util.List" %>
    
<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 삭제</title>
</head>
<body>
	<h1>주소록 삭제</h1>
	
	<form action="./deletePerson.jsp" mathod="get">
		<label name = "person_id">삭제하고자하는 사람의 번호 입력
		<input type = "text" name = "person_id"></label>
		
		<button type = submit>삭제</button>
	</form>
	
	<br><hr>
	
	<%for(PersonVo personVo: personList){ %>
	<table border="1">
		<colgroup>
			<col style="width: 120px;">
			<col style="width: 170px;">
		</colgroup>
			<tr>
				<td>번호(Person_id)</td>
				<td><%=personVo.getPersonId() %></td>
			</tr>
			<tr>
				<td>이름(name)</td>
				<td><%=personVo.getName() %></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=personVo.getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=personVo.getCompany() %></td>
			</tr>
	</table>
	<br>
	<%} %>
	
	<a href="./list.jsp">전화번호 리스트</a>
</body>
</html>