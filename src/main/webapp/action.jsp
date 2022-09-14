<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="data" class="user.Data" scope="page" />
<jsp:setProperty name="data" property="check" />
<jsp:setProperty name="data" property="number" />

<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
<title>practice</title>
</head>
<body>
	<%
	UserDAO userDAO = new UserDAO();
	int updateResult = userDAO.update(data);
	if (updateResult == -1) {
		System.out.println("database update failed");
	} else {
		System.out.println("database update succeeded");
	}
	%>

</body>
</html>