<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="header">
<table><tr>

	<td id="logo_space">
	<a href="main.html">
	<img alt="로고" src="./img/nbh.jpg" id="logo">
	<img alt="회사명" src="./img/nbh.jpg" id="companyname">
	</a>
	</td>

	<td id="search_space" align="center">
	<input type="text" size="40px" >
	<input type="button" value="검색">
	</td>

	<td id="login_space">
	<c:choose>
	<!-- <c:when test="${not empty loginUser}"> 로그인 했는지 않햇는지-->
		<form action="login.do" method="get"><table>
		    <tr><td align="right"><input type="text"></td>
			<td rowspan="2"><input type="submit" id="loginbtn" value="로그인"></td></tr>
			<tr><td align="right"><input type="password"></td></tr>
			<tr id="sign_and_find">
				<td align="right"><a href="join.html">회원이 아니시면 가입하세요.</a></td>
				<td align="center"><a href="find.html">비밀번호 찾기</a></td>
			</tr>
		</table></form>
	<!-- </c:when> -->
	<c:when test="${bbb}">
		<form action="login.do" method="get"><table>
		<tr><td>
			<c:out value="${loginUser.mName}" />님, 환영합니다.
			마이페이지 or 관리자 페이지
			비밀번호 수정
			내 ~~~
		</td></tr>
		</table></form>
	</c:when>
	</c:choose>
	</td>
	
</tr></table>
</div>
</body>
</html>