<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>jstl</title>
</head>
<body>
<p>java문자열 검색
<p>Hello, Java Server Pages! 
    =>${fn:contains("Hello, Java Server Pages!","java")}<br>
<p>Hello, Java Server Pages! 
    =>${fn:containsIgnoreCase("Hello, Java Server Pages!","java")}

</body>
</html>