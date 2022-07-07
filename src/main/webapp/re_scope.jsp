<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>re_scope.jsp<br>

	name : ${name }<br>
	page : ${pageScope.name }<br>
	request : ${requestScope.name }<br>
	session : ${sessionScope.name }<br>
	application : ${applicationScope.name }<br>
	
	<!-- name 을 출력했을 경우 가장 작은 범위의 값이 나오게 된다 -->
	
</body>
</html>