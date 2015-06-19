<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<%@ include file="mainheader.jsp" %>
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
		document.frm_map.submit();
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





<table><tr><td>
지역별 맛집 찾기<br>
<c:choose> 
	<c:when test="${empty map_picture_src}">
		<img alt="전국지도" src="./img/map.jpg" id="map">
	</c:when>
	<c:when test="${not empty map_picture_src}">
		<img alt="전국지도" src="${map_picture_src}" id="map">
	</c:when>
</c:choose> 

<form name="frm_map" action="select_local.html">

<select name="selectbox_local" onchange="select_local()">
	<option value="1">서울</option>
	<option value="2">경기</option>
	<option value="3">강원</option>
	<option value="4">충청</option> 
	<option value="5">전라</option>
	<option value="6">경상</option>
	<option value="7">제주</option>
</select>
</form>
</td>


<%-- 지역을 선택했을 때 나오는 부분 & BEST5에 대한 설명 부분 --%>
<td>

<c:if test="${empty plaque}">
	<c:set var="plague" value="0" />
</c:if>
<c:if test="${plague eq 1}">
	
</c:if>
<c:if test="${plague eq 0}">
	나나나나나나
</c:if>

</td>



<td>
<div class="item2">
추천Best5<br>
<a href="#"><img alt="큰이미지" src="" height="" width="" id="big"></a><br>
식당이름 글자크기 크게<br>
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


</body>
</html>