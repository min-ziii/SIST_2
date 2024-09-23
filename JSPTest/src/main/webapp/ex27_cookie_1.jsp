<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title></title>
	<link rel="stylesheet" href="http://bit.ly/3WJ5ilK">
	<style>
		fieldset {
			margin: 10px;
			display: flex;
		}
		fieldset > * {
			margin-right: 5px;
		}
		fieldset > #theme {
			height: 36px;
			
		}
	</style>
</head>
<body>
	<!-- ex27_cookie_1.jsp -->
	<h1>첫번째 페이지</h1>
	
	<div>
		<a href="ex27_cookie_1.jsp">첫번째 페이지</a>
		<a href="ex27_cookie_2.jsp">두번째 페이지</a>
		<a href="ex27_cookie_3.jsp">세번째 페이지</a>
	</div>
	
	<fieldset>
		<legend>Site Options</legend>
		<input type="color" id="theme" value="#FFFFFF">
		<input type="button" value="적용" id="btnAppy">
		<input type="button" value="취소" id="btnClear">
	</fieldset>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="js/cookie.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
	
		if(getCookie('theme')!= ''){
		$('body').css('background-color', getCookie('theme'));
		
		$('#theme').val(getCookie('theme'));
		}
		
		
		$('#btnAppy').click(()=> {
			$('body').css('background-color', $('#theme').val());
			
			//쿠키
			//1. 메모리 쿠키
			//	- 쿠키값이 현재 브라우저가 실행되는 동안 저장
			//	- 브라우저를 종료하면 쿠기값도 같이 사라진다.
			//2. 하드 쿠키
			//	- 쿠기값을 하드 디스크(SDD)에 저장
			//	- 지속적으로 저장 & 관리 가능
			//	- 만료 시간 지정 가능(언제까지 쿠키 보관)
			
			
			//쿠키에 배경색 저장 > 메모리 저장
			//setCookie('theme', $('#theme').val());
			
			//하드에 저장 > 만료 시간 지정
			setCookie('theme', $('#theme').val(), 365);
			
			
		});
		
		
		$('#btnClear').click(()=> {
			setCookie('theme','',-1);
			
			$('body').css('background-color','#FFFFFF');
			$('#theme').val('#FFFFFF');
		});
	</script>
</body>
</html>






