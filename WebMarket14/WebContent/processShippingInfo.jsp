<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 쿠키생성 new Cookie(이름,값) -이름과 값 모두 String타입
	이름은 a-z,A-Z,0-9사이의 값만 허용,
	값은 특수 문자인 경우 URLEncoder.encode()로 인코딩 해줘야함.
 -->
<% request.setCharacterEncoding("utf-8");
 Cookie cartId = new Cookie("Shipping_cartId",
		URLEncoder.encode(request.getParameter("cartId"),"utf-8"));
Cookie name=new Cookie("Shipping_name",
		URLEncoder.encode(request.getParameter("name"),"utf-8"));
Cookie shippingDate=new Cookie("Shipping_shippingDate",
		URLEncoder.encode(request.getParameter("shippingDate"),"utf-8"));
Cookie country = new Cookie("Shipping_country",
		URLEncoder.encode(request.getParameter("country"),"utf-8"));
Cookie zipcode =new Cookie("Shipping_zipCode",
		URLEncoder.encode(request.getParameter("zipCode"),"utf-8")); 
Cookie addressName =new Cookie("Shipping_addressName",
		URLEncoder.encode(request.getParameter("addressName"),"utf-8"));
 
%><br>
</body>
</html>