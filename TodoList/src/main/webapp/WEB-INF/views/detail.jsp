<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${todo.todoTitle} 상세조회</title>

	<link rel="stylesheet" href="/resources/css/detail.css">
</head>
<body>

	<h1>${todo.todoTitle}</h1>

	<div class="complete">
		완료 여부 : 
		
		<c:if test="${todo.todoComplete}">
			<span class="green">O</span>
		</c:if>

		<c:if test="${not todo.todoComplete}">
			<span class="red">X</span>
		</c:if>		
	</div>
	
	<div>
		작성일 : ${todo.regDate}
	</div>

	<div class="content">${todo.todoDetail}</div>

	<script src="/resources/js/detail.js"></script>
</body>
</html>