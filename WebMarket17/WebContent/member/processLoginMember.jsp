<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%
    //한글값 설정
	request.setCharacterEncoding("utf-8");
    
    String id=request.getParameter("id");
    String password=request.getParameter("password");
%>
<%=id%><br>
<%=password%><br>