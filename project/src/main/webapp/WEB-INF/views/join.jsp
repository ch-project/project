<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function pass_chk() {
		if(frm.pass.value!=frm.pass2.value) {
			alert("패스워드가 일치하지 않습니다.");
			return false;
		}
		return true;
	}
	function id_chk() {
		var id = frm.id.value;
		location.href="id_chk.html?id="+id;
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table><tr><td><fieldset>
	<legend>회원가입 페이지</legend>
<form action="join_query.html" name="frm" method="post" onsubmit="return pass_chk()"><table>
	<tr><td>아이디</td>
		<td><input type="text" required="required" name="id">
		<input type="button" value="ID중복체크" onclick="return id_chk()"></td></tr>
	<tr><td>패스워드</td>
		<td><input type="password" required="required" name="pass"></td></tr>
	<tr><td>패스워드확인</td>
		<td><input type="password" required="required" name="pass2"></td></tr>
	<tr><td>이름</td>
		<td><input type="text" required="required"></td></tr>
	<tr><td>이메일</td>
		<td><input type="text" required="required"></td></tr>
	<tr><td>주소</td>
		<td><input type="text" required="required"></td></tr>
	<tr><td><input type="submit" value="가입하기"></td>
		<td><a href="main.html"><input type="button" value="취소"></a></td></tr>
</table></form>
</fieldset></td></tr></table>

</body>
</html>