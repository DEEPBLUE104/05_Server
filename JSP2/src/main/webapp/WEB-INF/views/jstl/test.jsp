<%-- c : 자주 사용하는 Java 코드 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- fn : 컬렉션/문자열 관련 기능 --%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 확인하기</title>
</head>
<body>
	<h3>1. 변수 선언(== 속성 추가) - c:set 태그</h3>
	<pre>
		- 원하는 scope 객체에 값을 세팅할 수 있는 태그
		== 객체.setAttribute("key", value);
	
		[속성]
	
	1) var : 변수명(== key)
	2) value : 대입할 값(== value)
	3) scope : 범위 지정 (page, request, session, application)
		-> 기본값은 page
	</pre>
	
	<c:set var="num1" value="10" scope="page"/>
	<c:set var="num2" value="20" scope="request"/>
	<c:set var="num3" value="30" scope="session"/>
	<c:set var="num4" value="40" scope="application"/>
	<%-- 마지막에 /넣으면 닫는 표시 축약 --%>
	
	<h5>page - num1 : ${pageScope.num1}</h5>
	<h5>request - num2 : ${requestScope.num2}</h5>
	<h5>session - num3 : ${sessionScope.num3}</h5>
	<h5>application - num4 : ${applicationScope.num4}</h5>
	
	<hr>
	
	<h3>2. 변수 제거 (== 속성 제거) - c:remove 태그</h3>
	<pre>
		-scope 객체에 세팅된 속성을 제거하는 태그
		(== 객체.removeAttribute("key"))
		
		[속성]
		1) var : 변수명 (== key)
		2) scope : 범위 지정(page, request, session, application)
			-> 기본값 : 전 범위 일괄 제거 
	</pre>
	
	<c:set var="test2" scope="page" value="페이지"/>
	<c:set var="test2" scope="request" value="리퀘스트"/>
	<c:set var="test2" scope="session" value="세션"/>
	<c:set var="test2" scope="application" value="어플리케이션"/>
	
	<ul>
		<li>page : ${pageScope.test2}</li>
		<li>request : ${requestScope.test2}</li>
		<li>session : ${sessionScope.test2}</li>
		<li>application : ${applicationScope.test2}</li>
	</ul>
	
	<%-- session scope 에 존재하는 test2 제거 --%>
	<c:remove var="test2" scope="session"/>

	<ul>
		<li>page : ${pageScope.test2}</li>
		<li>request : ${requestScope.test2}</li>
		<li>session : ${sessionScope.test2}</li>
		<li>application : ${applicationScope.test2}</li>
	</ul>
	
	<%-- 모든 scope의 test2 제거: scope 미작성 --%>
	<c:remove var="test2"/> 
	
	<ul>
		<li>page : ${pageScope.test2}</li>
		<li>request : ${requestScope.test2}</li>
		<li>session : ${sessionScope.test2}</li>
		<li>application : ${applicationScope.test2}</li>
	</ul>

</body>
</html>