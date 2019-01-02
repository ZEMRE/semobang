<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>register 뷰 페이지: 사용자 등록</h1>
		
		<form action="registerUser" method="post">
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id"></td>
				</tr>
				<tr>
					<th>패스워드</th>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="전송">
					</td>	
				</tr>
			</table>
		</form>
	</body>
</html>