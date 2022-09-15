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

     <header>
 <h1>just select</h1>
    
    </header>
    <main>
            <div id="question1">
            <form method="post" action="action.jsp"  >
                  <label>1. pick one please </label><br>
                  <input type="hidden" name="number" value="1">
                <input type="radio" name="check" value="1">
                  <label> one <%=userDAO.read(1,1) %> </label><br>
                  <input type="radio" name="check" value="2">
                    <label> two <%=userDAO.read(1,2) %> </label>  <br>
                <input type="radio" name="check" value="3">
                  <label> three <%=userDAO.read(1,3) %> </label><br>
                <input type="submit" value="Submit">
            </form>
          
        </div>
        <div id="question2">
            <form method="post" action="action.jsp" target="blankIframe">
                  <label>2. </label>  
                  <input type="hidden" name="number" value="2">
                <input type="radio" name="check" value="1">
                  <input type="radio" name="check" value="2">  
                <input type="radio" name="check" value="3">
                <input type="submit" value="Submit">
            </form>
        </div>
          <div id="question3">
            <form method="post" action="action.jsp" target="blankIframe">
                  <label>3. </label>  
                  <input type="hidden" name="number" value="3">
                <input type="radio" name="check" value="1">
                  <input type="radio" name="check" value="2">  
                <input type="radio" name="check" value="3">
                <input type="submit" value="Submit">
            </form>
        </div>
    </main>
    <footer>
     <iframe id ="blankIframe" name=blankIframe  ></iframe>
    </footer>
            
            
</body>
</html>