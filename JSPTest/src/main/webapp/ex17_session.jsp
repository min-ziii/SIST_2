<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

	//방문 횟수 카운트
	//- 누적 변수 필요
	
	//int count = 0;
	//count++; //0
	
	//pageContext //X
	//request //X
	//session //O
	
	if (session.getAttribute("count") == null) {
	session.setAttribute("count", 1);
	} else {
	session.setAttribute("count", (int)session.getAttribute("count") + 1);
	}
	
	
	//http or https 프로토콜은 비연결 지향
	//- 연결을 지속하는 것을 지양한다.
	
	
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		
	</style>
</head>
<body>
	<!-- ex17_session.jsp -->
	<h1>방문횟수</h1>
	<div>count: <%= session.getAttribute("count") %></div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>






