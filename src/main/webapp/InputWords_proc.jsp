<%@page import="com.english.tutor.Vocab"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id='vs' class='com.english.tutor.Vocab'>
	<jsp:setProperty name='vs' property='*'/>
</jsp:useBean>

<jsp:useBean id="svc" class='com.english.tutor.EnglishService' scope='session'/>

<%
	
	List<Vocab> list = svc.extractEachV(vs);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Input Words</title>
</head>
<body>
<c:set var='list' value='<%=list%>'/>
<p>
	<ol>	
		<c:forEach var='v' items='${list}' varStatus='status'>
			<li>${v.word}: ${v.def}</li>
		</c:forEach>
	</ol>
	
<div>[<a href='RandomWords.jsp'>게임시작</a>]</div>
</body>
</html>