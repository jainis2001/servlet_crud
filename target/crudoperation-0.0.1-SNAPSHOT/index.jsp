<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="com.controller.*,java.util.*" %>
  <%@ taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="addStudent.jsp"><button>Add User</button></a>

<%

List<User> list=UserDataList.getUserData();

request.setAttribute("list",list);


%>
<table border="1">
	<tr>
		<th>Id</th>
		<th>First Name</th>
		<th>Last NAme</th>
		<th>Age</th>
		<th>Email</th>
		<th>Mobile</th>
		<th colspan=2>Operations</th>
	</tr>
	<c:forEach items="${list}" var="user">
		<tr>
			<td>${user.getId()}</td>
			<td>${user.getFirstName()}</td>
			<td>${user.getLastName()}</td>
			<td>${user.getAge()}</td>
			<td>${user.getEmail()}</td>
			<td>${user.getMobile()}</td>
			<td><a href="editUser.jsp?id=${user.getId()}"><button>Edit</button></a></td>
			<td><a href="DeleteUser?id=${user.getId()}"><button>Delete</button></a></td>
			
	
		</tr>
	</c:forEach>
</table>


</body>
</html>