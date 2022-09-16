<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	session.invalidate();
%>

<script>
	location.href = 'login.jsp';
	alert('you are signed out, bro.');
</script>

</body>
</html>