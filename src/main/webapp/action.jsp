<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>
<jsp:useBean id="data" class="user.Data" scope="page" />
<jsp:setProperty name="data" property="check_option" />
<jsp:setProperty name="data" property="question_number" />
<jsp:setProperty name="data" property="userID" />

<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
  	 <link rel="stylesheet" href="index.css">
<title>practice</title>
</head>
<body>
	<%
	UserDAO userDAO = new UserDAO();
	try {
		if (session.getAttribute("userID") == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('you have to sign in first .')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} else {
			String userID = session.getAttribute("userID").toString();
			data.setUserID(userID);
		}

		int updateResult = userDAO.update(data);
		if (updateResult >= -1) {
			System.out.println("database update succeeded");
		}

	} catch (Exception e) {
		System.out.println("database update failed");
		e.printStackTrace();
	}
	%>

  <h1>just select</h1> 
  
			<a href="logout.jsp" >sign out</a>
		
				<form method="post" action="action.jsp">
					<div class ="pick">
					<fieldset>
							<legend>1. pick one please</legend>
							<input type="hidden" name="question_number" value="question_one">
							<input type="radio" id="question_one_check_one" name="check_option" value="check_one" >
							<label for="check_option"> check_one </label>
							<br>
							<input type="radio" id="question_one_check_two" name="check_option" value="check_two">
							<label for="check_option"> check_two </label>
							<br>
							<input type="radio" id="question_one_check_three" name="check_option" value="check_three">
							<label for="check_option"> check_three </label>
							<br>
							<input type="submit" value="Submit"> 
						</fieldset>
				</div>
				<div class ="pieChart" >
					<canvas id="pie1"  ></canvas>
				</div>
				</form>
				
				<form method="post" action="action.jsp">
					<div class ="pick">
						<fieldset>
							<legend>2. pick one please</legend>
							<input type="hidden" name="question_number" value="question_two">
							<input type="radio" id="question_two_check_one" name="check_option" value="check_one">
							<label for="check_option"> check_one </label>
							<br>
							<input type="radio" id="question_two_check_two" name="check_option" value="check_two">
							<label for="check_option"> check_two </label>
							<br>
							<input type="radio" id="question_two_check_three" name="check_option" value="check_three">
							<label for="check_option"> check_three </label>
							<br>
							<input type="submit" value="Submit"> 
						</fieldset>
				</div>
				<div class ="pieChart" >
					<canvas id="pie2"  ></canvas>
				</div>
				</form>
			
<script>
	
 let check = (question_number_check_option) => {
	 let null_check = question_number_check_option.split("_")[2];
	 if( null_check!="null"){
		 document.getElementById(question_number_check_option).checked = true;
	 }
	} 
 
let question_number_check_option = "<%= userDAO.read_check_option_in_user("question_one", data.getUserID()) %>";
check(question_number_check_option);

question_number_check_option = "<%= userDAO.read_check_option_in_user("question_two", data.getUserID()) %>";
check(question_number_check_option);

 var xValues1 = ["check_one", "check_two", "check_three"];
var yValues1 = [<%=userDAO.read("question_one","check_one") %>, <%=userDAO.read("question_one","check_two") %>, <%=userDAO.read("question_one","check_three") %> ];
var barColors1 = [
  "#b91d47",
  "#00aba9",
  "#2b5797"
];

new Chart("pie1", {
  type: "pie",
  data: {
    labels: xValues1,
    datasets: [{
      backgroundColor: barColors1,
      data: yValues1
    }]
  },
  options: {
    title: {
      display: true,
      text: ""
    }
  }
});

var xValues2 = ["check_one", "check_two", "check_three"];
var yValues2 = [<%=userDAO.read("question_two","check_one") %>, <%=userDAO.read("question_two","check_two") %>, <%=userDAO.read("question_two","check_three") %> ];
var barColors2 = [
  "#b91d47",
  "#00aba9",
  "#2b5797"
];

new Chart("pie2", {
  type: "pie",
  data: {
    labels: xValues2,
    datasets: [{
      backgroundColor: barColors2,
      data: yValues2
    }]
  },
  options: {
    title: {
      display: true,
      text: ""
    }
  }
});




</script>
				
            
</body>
</html>