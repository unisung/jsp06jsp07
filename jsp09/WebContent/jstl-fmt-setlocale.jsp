<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=request.getLocale() %><br>

<fmt:setLocale value="en"/>
<p><%=response.getLocale() %><br>

<%-- request.setCharacterEncoding("utf-8") --%>
<fmt:requestEncoding value="utf-8"/>

</body>
</html>