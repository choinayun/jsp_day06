<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>abc : ${abc }</h1>

<hr>
eq(==), ne(!=), lt(<), gt(>), le(<=), ge(>=), and(&&), or(||)<br>	
	<%--  ${ 5 / 3 } == ${ 5 div 3 }<br>  나누기 (실수값) --%>
	${ 5 % 2 } == ${ 5 mod 2 }<br> <!-- 퍼센트 --> 
	
<hr>	
	<%= "안녕하세요" %><br>
	${"안녕하세요" } <!-- el 표기법 -->
</body>
</html>