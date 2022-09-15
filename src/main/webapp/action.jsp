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
    <meta name="viewport" content="width=device-width, initial-scale=1">
  	 <link rel="stylesheet" href="index.css">
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

  <h1>just select</h1> 
		
				<form method="post" action="action.jsp">
					<label>1. pick one please </label>
					<br>
					<input type="hidden" name="number" value="1">
					<label for="check">
						<input type="radio" id="check" name="check" value="1">one <%=userDAO.read(1,1) %>
					</label>
					<label for="check">
						<input type="radio" id="check" name="check" value="2">two <%=userDAO.read(1,2) %>
					</label>
					<label for="check">
						<input type="radio" id="check" name="check" value="3">three <%=userDAO.read(1,3) %>
					</label>
					<input type="submit" value="Submit"> 
				</form>
			
				<form method="post" action="action.jsp">
					<label>2. pick one please </label>
					<br>
					<input type="hidden" name="number" value="2">
					<label for="check">
						<input type="radio" id="check" name="check" value="1">one <%=userDAO.read(2,1) %>
					</label>
					<label for="check">
						<input type="radio" id="check" name="check" value="2">two <%=userDAO.read(2,2) %>
					</label>
					<label for="check">
						<input type="radio" id="check" name="check" value="3">three <%=userDAO.read(2,3) %>
					</label>
					<input type="submit" value="Submit"> 
				</form>
			
				<form method="post" action="action.jsp">
					<label>3. pick one please </label>
					<br>
					<input type="hidden" name="number" value="3">
					<label for="check">
						<input type="radio" id="check" name="check" value="1">one
					</label>
					<label for="check">
						<input type="radio" id="check" name="check" value="2">two</input>
					</label>
					<label for="check">
						<input type="radio" id="check" name="check" value="3">three</input>
					</label>
					<input type="submit" value="Submit"> 
				</form>
            
            
</body>
</html>