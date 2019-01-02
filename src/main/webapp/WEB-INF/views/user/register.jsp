<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>	
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>register 뷰 페이지: 사용자 등록</h1>
		
		<form action="registerUser" method="post">
			<table>
				<tr>
					<th>이메일</th>
					<td><input type="email" name="user_email" id="user_email" required>
					<!-- 이메일 중복확인 -->
					<div class="check_font" id="id_check"></div>
					</td>
				</tr>
				
				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="user_pass" id="user_pass" required></td>
				</tr>
				
				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="user_passConfirm" id="user_passConfirm"
					           onkeyup="passConfirm()" required><span id="confirmMsg"></span> </td>
				</tr>
					
				
				<tr>
					<th>이름</th>
					<td><input type="text" name="user_name" required></td>
				</tr>	
				
				<tr>
					<!-- 체크박스에 체크 했으면 true, 안했으면 false -->
					
					<td><input type= "checkbox" name="user_level">등록자는 체크해주세요!</td>
					<td colspan="2" align="center">
						<input type="submit" value="회원가입" id="reg_submit">
					</td>	
				</tr>
			</table>
		</form>
	 
	 <!-- 자바 스크립트 함수 선언(비밀번호 확인) -->
	 <script type="text/javascript">
	 /* 
	        비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치라는 텍스트 출력
		document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함
	 	getElementById('아이디') : 아이디에 적힌값을 가진 ID의 value값을 get해서 password 변수 넣기*/
	 	function passConfirm() {
	 	/* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
	 	/* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
	 	/* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
	 		var password = document.getElementById('user_pass');					//비밀번호 
	 		var passwordConfirm = document.getElementById('user_passConfirm');	//비밀번호 확인 값
	 		var confirmMsg = document.getElementById('confirmMsg');				//확인 메세지
	 		var correctColor = "#00ff00";	//맞았을 때 출력되는 색깔.
	 		var wrongColor ="#ff0000";	//틀렸을 때 출력되는 색깔
	 			
	 		if(password.value == passwordConfirm.value){//password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
	 			confirmMsg.style.color = correctColor;/* span 태그의 ID(confirmMsg) 사용  */
	 			confirmMsg.innerHTML ="비밀번호 일치";/* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
	 		}else{
	 			confirmMsg.style.color = wrongColor;
	 			confirmMsg.innerHTML ="비밀번호 불일치";
	 		}
	 		}
	 	</script>	
		<script>
		// 아이디 유효성 검사(1 = 중복 / 0 != 중복)
		$("#user_email").blur(function() {
			// id = "id_reg" / name = "userId"
			var user_email = $('#user_email').val();
			$.ajax({
				url : '${pageContext.request.contextPath}/user/duplicateCheck?user_Email='+ user_email,
				type : 'get',
				success : function(data) {
					console.log("1 = 중복o / 0 = 중복x : "+ data);							
					
					if (data == 1) {
							// 1 : 아이디가 중복되는 문구
							$("#id_check").text("사용중인 아이디입니다");
							$("#id_check").css("color", "red");
							$("#reg_submit").attr("disabled", true);
						} else {
							
						
								// 0 : 아이디 길이 / 문자열 검사
								$("#id_check").text("");
								$("#reg_submit").attr("disabled", false);
					
							} 
					}, error : function() {
							console.log("실패");
					}
				});
			});
		</script>



	 		
		
	</body>
</html>