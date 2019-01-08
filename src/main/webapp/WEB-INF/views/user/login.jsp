<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
	
	<a href="../index"><h1>login 뷰 페이지</h1></a>
	
	<form action="loginUser" name="loginUser" method="post">
	
	<table width="300" cellpadding="0" cellspacing="0" border="1">
		
		<tr align="left">
			<th>이메일</th>
		</tr>
		<tr>
			<td><input type="text" name="user_email"></td>
		</tr>
		<tr>
			<th align="left">비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="">비밀번호를 잊어버렸나요?</a></th>
		</tr>
		<tr>
			<td><input type="password" name="user_pass"></td>
		</tr>
		<tr align="center">
			<td><input type="button" onclick="login()" value="로그인"></td>
		</tr>
		<tr align="right">
			<td>아이디가 없나요?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button" onclick="join()" value="회원가입"></td>
		</tr>
		<tr>
			<td>----------------------OR-----------------------</td>
		</tr>
		<tr align="center">
			<td><input type="button" value="SNS로그인"></td>
		</tr>
	</table>
	
	</form>
	
	</body>
	
	<script>
		function login(){
			loginUser.submit();
		}
		function join(){
			location.href="register"
		}
		
	</script>
</html>