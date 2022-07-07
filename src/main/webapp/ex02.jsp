<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jstl 문법 사용하기위한 기본 설정 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> ex02.jsp<br>

	<%-- request.setCharacterEncoding("utf-8"); --%>
	<fmt:requestEncoding value="utf-8" /> 

	<c:choose>
		<c:when test="${ 1 == 1 }">
			<h1>111같다</h1>
		</c:when>
		<c:when test="${ 2 == 2 }">
			<h2>222같다</h2>
		</c:when>
		<c:otherwise>
			<h1>else 문장 실행 </h1>
		</c:otherwise>
	</c:choose>

<hr>
	<c:remove var="abc" scope="session" />
	<c:set var="abc" value="안녕" scope="session" />
	<a href="ex01.jsp">ex01 이동</a>

<hr>	
	
	<%--
	해당하는 파일의 내용을 가져온다 
	<c:import url="test/test.jsp" />
	<!-- 해당하는 파일로 이동하기 -->
	<c:redirect url="ex01.jsp"/> --%>

<hr>
	${param.id }<br>
	${param.pwd }<br>
	
<hr>
	<%
	 	ArrayList<String> arr = new ArrayList<>();
		arr.add("1111");
		arr.add("2222");
		arr.add("3333");
	%>
	
	<c:set var="array" value="<%=arr %>"/>
	
	<c:forEach var="ar" items="${array }">
		${ar }<br>
	</c:forEach>
	
	<hr>	
	<!-- for문 만들기 
		 var : 변수 (해당하는 값을 변수에 넣기) -->
	<c:forEach begin="10" end="15" step="1" var="n" >
		n : ${n }<br>
	</c:forEach>
	
	${array[0] }<br>
	${array[1] }<br>
	${array[2] }<br>
	
<hr>
	<!-- if문 만들기
		(test 안에 비교문구 넣어주기) -->
	<c:set var="t" value="그래" />
	<c:if test="${ t == '그래1' }">
		<script type="text/javascript">
			alert( '그래' + "같다" )
			// script 내에서는 script 문법만 사용가능하기 때문에 
			// t 라는 변수를 읽을 수 없다 -> ${t} 를 사용해서 나타낼 수 있지만 
			// 오류 발생 (f12로 확인) -> ${t} = 그래 라는 값을 가지고 있으니 '그래'로 표현이 가능
		</script>
	</c:if>

<hr>
	<!-- 변수만들기 (var : 변수이름) -->
	<c:set var="num" value="안녕" />
	${num }
	
<hr>
	<!-- 값 출력하기 -->
	<c:out value="안녕하세요" /><br>
	${ "안녕하세요" }

</body>
</html>