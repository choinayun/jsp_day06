<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>get_user.jsp<br>

	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
	<jsp:useBean id="dao" class="day06.TestDAO" />
	<c:set var="dto" value="${dao.getUser(param.id) }" />
	
	<!-- getter는 생략가능하기에 
		 해당하는 변수이름만 작성해도 된다 -->
	
	이름 : ${dto.name }<br>
	아이디 : ${dto.getId() }<br>
	비밀번호 : ${dto.pwd }
	
</body>
</html>