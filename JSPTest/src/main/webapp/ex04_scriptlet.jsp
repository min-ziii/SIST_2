<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<!-- ex04_scriptlet.jsp -->
	<h1>구구단</h1>
	
	<%
		//스크립틀릿 > html 문서 내에서 자바 영역을 제공
		int dan = 5;
	%>
	
	<%
		//스파게티 코드
		for(int i=1; i<=9; i++){
			//<div>5X1=5</div>
			
	%>
	<div><%= dan %> X <%= i %> = <%= dan * i %></div>
	<%-- <%= "<div>" + dan +"x" + i + '='+(dan*i) + "</div>" %> --%>
	<%		
		}
	
	%>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>






