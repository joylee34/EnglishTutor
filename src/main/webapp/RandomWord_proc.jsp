<%@page import="org.json.simple.JSONArray"%>
<%@page import="com.english.tutor.Vocab"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<jsp:useBean id="svc" class='com.english.tutor.EnglishService' scope='session'/>
<%
	List<Vocab> list = svc.randomWordsArray();
	JSONArray jsArr = new JSONArray();
	for(int i=0; i<list.size(); i++)
	{
		jsArr.add(list.get(i).getWord());
	}
	out.print(jsArr);
%>
