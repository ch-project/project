<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	div{ display: inline; }
	
	table{width:100%}
	/* #menu_space table{width:100%} */
	
	#logo_space{width: 30%}
	#logo_space #logo{width: 75px;height: 75px}
	#logo_space #companyname{width: 200px;height: 75px}
	#search_space{width:40%;}
	
	#login_space{width: 30%}
	#loginbtn{width: 100%;height: 100%;font-size: large;}
	#sign_and_find{font-size: x-small;}
    
</style>
<link href="" rel="stylesheet" type="test/css">

<script type="text/javascript">
	function select_local() {
		document.selectbox_local.submit();
	}
	
	function b1() {
		document.getElementById("big").src="best1.jpg";
	}
	function b2() {
		document.getElementById("big").src="best2.jpg";
	}
	function b3() {
		document.getElementById("big").src="best3.jpg";
	}
	function b4() {
		document.getElementById("big").src="best4.jpg";
	}
	function b5() {
		document.getElementById("big").src="best5.jpg";
	}
	
	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<div id="header">
<table><tr>

	<td id="logo_space">
	<img alt="로고" src="./img/nbh.jpg" id="logo">
	<img alt="회사명" src="./img/nbh.jpg" id="companyname">
	</td>

	<td id="search_space" align="center">
	<input type="text" size="40px" >
	<input type="button" value="검색">
	</td>

	<td id="login_space">
	<form action="join" method="get"><table>
	    <tr><td align="right"><input type="text"></td>
		<td rowspan="2"><input type="submit" id="loginbtn" value="로그인"></td></tr>
		<tr><td align="right"><input type="password"></td></tr>
		<tr id="sign_and_find">
			<td align="right"><a href="">회원이 아니시면 가입하세요.</a></td>
			<td align="center"><a href="">비밀번호 찾기</a></td>
		</tr>
	</table></form>
	</td>
	

</tr></table>
</div>

<hr/>

<div id="menu_space">
<table border=1 ><tr>
<td>메뉴1</td><td>메뉴2</td><td>메뉴3</td><td>메뉴4</td>
</tr></table>
</div>

<hr/>


<table><tr><td>

<img alt="지도" src="./img/map.jpg" id="map">

<form action="">
<select name="selectbox_local" id="selectbox_local" onchange="select_local()">
	<option>서울</option>
	<option>경기</option>
	<option>강원</option>
	<option>충청</option> 
	<option>전라</option>
	<option>경상</option>
	<option>제주</option>
</select>
</form>
</td>

<td>
<div class="item2">
추천Best5<br>
<a href="#"><img alt="큰이미지" src="" height="" width="" id="big"></a><br>
<img alt="베스트1" src="./img/best1.jpg" onclick="b1()">
<img alt="베스트2" src="./img/best2.jpg" onclick="b2()">
<img alt="베스트3" src="./img/best3.jpg" onclick="b3()">
<img alt="베스트4" src="./img/best4.jpg" onclick="b4()">
<img alt="베스트5" src="./img/best5.jpg" onclick="b5()">
</div>

</td></tr></table>

<hr/>
<div id="foot_space">
<address>주소 : 서울시 서초구 서초동 1234 <br/> TEL: 02-1111-1111</address>
</div>

1


</body>
</html>