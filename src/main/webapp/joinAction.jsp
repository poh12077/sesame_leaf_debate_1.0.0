<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
 
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPassword"/>
<jsp:setProperty name="user" property="userGender"/>
 
<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
<title>Just Pick</title>
</head>
<body>
    <%
        
        UserDAO userDAO = new UserDAO();
        int result = userDAO.join(user);
        
        if (result == -1){
        	  PrintWriter script = response.getWriter();
              script.println("<script>");
              script.println("alert('DB 오류가 발생했습니다.')");
              script.println("history.back()");    // 이전 페이지로 사용자를 보냄
              script.println("</script>");
        }
        else {
        	session.setAttribute("userID", user.getUserID()  );
        	PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("location.href = 'action.jsp'");
            script.println("</script>");
        }
      
    %>
 
</body>
</html>