<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> scope.jsp<br>

	<h3>scope : 범위 지정</h3>
	
	<% 
		pageContext.setAttribute("name", "page");
		request.setAttribute("name", "request");
		session.setAttribute("name", "session");
		application.setAttribute("name", "application");
	%>

		name : ${name }<br>
		page : ${pageScope.name }<br>
		request : ${requestScope.name }<br>
		session : ${sessionScope.name }<br>
		application : ${applicationScope.name }<br>
		<a href="re_scope.jsp">이동</a>
		
		<!-- name 을 출력했을 경우 가장 작은 범위의 값이 나오게 된다 
			 scope 값을 지정하지 않은 경우 자동으로 page -->
		
</body>
</html>