<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../dbconn.jsp"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
	function confirmNum2(){
		alert('1');
		let confirm_num2 = document.getElementById('confirm_num').value;
		if(confirm_num2==20){
			window.opener.document.getElementById('mailChecked').value="1";
			window.close();
		}
	}
</script>
<body>
	<%
		String mail1 = request.getParameter("mail1");
	String mail2 = request.getParameter("mail2");
	String email = mail1 + "@" + mail2;
	%>
	<form>
		<p>입력된 아이디:</p>
		<p><%=email%></p>
		<input type="text" name="confirm_num" id="confirm_num"> 
		<input type="button" id="btn" onclick="confirmNum2()" value="전송" />
	</form>
</body>
</html>