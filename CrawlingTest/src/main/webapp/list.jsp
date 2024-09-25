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
	<!-- webapp > list.jsp -->
	<h1>상품 목록</h1>
	
	<div id="list"></div>
	
	
	<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
	<script src="https://bit.ly/4cMuheh"></script>
	<script>
		
	//Ajax or OpenAPI
		const list = [
			{
				name: '마우스',
				color: '흰색'
			},
			{
				name: '아이폰',
				color: '핑크'
			},
			{
				name: '갤럭시',
				color: '퍼플'
			},
			
		];
		
		$(list).each((index, item) => {
			
			$('#list').append('<div class="item"><div>' + item.name + '</div><div>' + item.color + '</div></div>');
			
		});
	
	</script>
</body>
</html>






