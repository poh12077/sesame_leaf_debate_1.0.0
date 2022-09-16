<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% String user_nm = "HONG GIL DONG"; %>
 
<!-- body input태그에서 java변수 값 가져오기 -->
<%-- <input type="text" id="" name="" value="<%=user_nm%>" > --%>
 
<!-- javascript에서 java변수 값 가져오기 -->
<script>    
    var user_nm = '<%= user_nm %>';
    alert(user_nm);
</script>

</body>
</html>