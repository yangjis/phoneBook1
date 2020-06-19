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
<title>전화번호 리스트</title>
</head>
<body>
	<h1>전화번호 리스트</h1>
	
	입력한 정보 내역입니다.<br><br>
	<%for(PersonVo personVo: personList){ %>
	<table border="1">
		<colgroup>
			<col style="width: 120px;">
			<col style="width: 170px;">
		</colgroup>
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
	<a href="./writeForm.jsp">추가번호 등록</a>
	
</body>
</html>