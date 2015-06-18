<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function chk() {

		alert("비밀번호가 같지 않습니다.");

	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table><tr><td><fieldset>
	<legend>회원가입 페이지</legend>
<form action="main.html" method="get" id="fff" name="fff"><table>
	<tr><td>아이디</td>
		<td><input type="text" required="required"><input type="button" value="ID중복체크" ></td></tr>
	<tr><td>패스워드</td>
		<td><input type="password" required="required" name="password"></td></tr>
	<tr><td>패스워드확인</td>
		<td><input type="password" required="required" name="password2"></td></tr>
	<tr><td>이름</td>
		<td><input type="text" required="required"></td></tr>
	<tr><td>이메일</td>
		<td><input type="text" required="required"></td></tr>
	<tr><td>주소</td>
		<td><input type="text" required="required"></td></tr>
	<tr><td><input type="submit" value="가입하기" onsubmit="chk()"></td>
		<td><a href="main.html"><input type="button" value="취소"></a></td></tr>
</table></form>
</fieldset></td></tr></table>

</body>
</html>