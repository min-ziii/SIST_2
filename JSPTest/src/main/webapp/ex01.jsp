
<%@ page import="java.util.Calendar"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	/* CSS 문법 */
</style>
</head>
<body>
	<!-- ex01.jsp -->
	<h1>Hello world!</h1>
	
	<%
		//자바 영역
		Calendar now = Calendar.getInstance();
	%>
	<div><%= String.format("%tT", now) %></div>
	
	<script>
		//자바 스크립트 영역
	</script>
	
	<%@ include file="inc/copyright.jsp" %>
	
</body>
</html>





















