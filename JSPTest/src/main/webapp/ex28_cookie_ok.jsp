<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	
	String id = request.getParameter("txtId");
	String pw = request.getParameter("txtPw");
	String cbRemember = request.getParameter("cbRemember");
	
	
	if(id.equals("hong") && pw.equals("1234")) {
		//로그인 성공
		session.setAttribute("result", true);
		
		//아이디 기억하기
		if(cbRemember != null && cbRemember.equals("y")) {
			
			//쿠키에 아이디를 저장하기
			//- 자바로 쿠키를 제어하기
			
			//자바로 쿠기값 쓰기
			Cookie cookie = new Cookie("id", id);
			
			//만료 시간
			cookie.setMaxAge(365*24*60*60);
			
			//쿠키 객체 > 브라우저에게 전달 + 저장
			response.addCookie(cookie);
			
		}else {
			
			//아이디 삭제하기
			//자바로 쿠키 삭제하기
		
			Cookie[] cookies = request.getCookies();
			
			for (int i=0; i<cookies.length; i++){
				
				if (cookies[i].getName().equals("id")){
					
					// if zero, deletes the SScookies
					cookies[i].setMaxAge(0);
					
					response.addCookie(cookies[i]); //브라우저에 적용
					
				}
			}
			
		}
		
		
		
	} else {
		//로그인 실패
		session.setAttribute("result", false);
	}
	
	response.sendRedirect("ex28_cookie_form.jsp");

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
	<!-- ex28_cookie_ok.jsp -->
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	</script>
</body>
</html>






