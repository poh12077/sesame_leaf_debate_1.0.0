<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>

<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  	 <link rel="stylesheet" href="index.css">
<title>just pick up</title>
</head>
<body>

<%
	UserDAO userDAO = new UserDAO();
	String userID=null;
	try {
		if (session.getAttribute("userID") == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('you have to sign in first .')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} else {
			 userID = session.getAttribute("userID").toString();
		}
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>

		<div id="div_menu">
			<button type="button" onclick="location.href='developer_page.jsp'">developed by</button>
			<button type="button" onclick="location.href='logout.jsp'">sign out</button>
		</div>
				<form id="question_1" method="post" action="doughnut_chart.jsp" target="question_1_doughnut" >
					<div class ="pick">
					<fieldset>
							<legend>1. pick one please</legend>
							<input type="hidden" name="question_number" value="question_1">
							<input type="hidden" name="number_of_check_options" value=3>
							<input type="radio" id="question_1_check_1" name="check_option" value="check_1">
							<label for="check_option"  ><i id="icon_check_1" class="fas fa-cloud" ></i> check_one </label>
							<br>
							<input type="radio" id="question_1_check_2" name="check_option" value="check_2">
							<label for="check_option"  ><i id="icon_check_2" class="fas fa-cloud" ></i> check_two</label>
							<br>
							<input type="radio" id="question_1_check_3" name="check_option" value="check_3">
							<label for="check_option"><i id="icon_check_3" class="fas fa-cloud" ></i> check_three </label>
							<br>
							<input type="submit" value="Submit"> 
						</fieldset>
					</div>
					<iframe id="iframe_doughnut" name="question_1_doughnut"  ></iframe>
				</form>
				
				<form id="question_2" method="post" action="doughnut_chart.jsp" target="question_2_doughnut" >
					<div class="pick">
						<fieldset>
							<legend>2. pick one please</legend>
							<input type="hidden" name="question_number" value="question_2">
							<input type="hidden" name="number_of_check_options" value=5>
							<input type="radio" id="question_2_check_1" name="check_option" value="check_1">
							<label for="check_option"><span style="color:#ff0000;font-weight:bold">1.</span> check_one</label>
							<br>
							<input type="radio" id="question_2_check_2" name="check_option" value="check_2">
							<label for="check_option"><span style="color: #ff8000;font-weight:bold">2.</span> check_two </label>
							<br>
							<input type="radio" id="question_2_check_3" name="check_option" value="check_3">
							<label for="check_option"><span style="color: #0040ff;font-weight:bold">3.</span> check_three </label>
							<br>
							<input type="radio" id="question_2_check_4" name="check_option" value="check_4">
							<label for="check_option"><span style="color: #8000ff;font-weight:bold">4.</span> check_four </label>
							<br>
							<input type="radio" id="question_2_check_5" name="check_option" value="check_5">
							<label for="check_option"><span style="color: #ff0080;font-weight:bold">5.</span> check_five </label>
							<br>
							<input type="submit" value="Submit"> </fieldset>
					</div>
					<div>
						<iframe id="iframe_doughnut" name="question_2_doughnut"  ></iframe>
					</div>
				</form>
				
				<form method="post" action="doughnut_chart.jsp" target="question_3_doughnut" >
					<div class="pick">
						<fieldset>
							<legend>3. pick one please</legend>
							<input type="hidden" name="question_number" value="question_three">
							<input type="radio" id="question_three_check_one" name="check_option" value="check_one">
							<label for="check_option"><i id="icon_check_1" class="fas fa-cloud" ></i> check_one </label>
							<br>
							<input type="radio" id="question_three_check_two" name="check_option" value="check_two">
							<label for="check_option"><i id="icon_check_2" class="fas fa-cloud" ></i> check_two</label>
							<br>
							<input type="radio" id="question_three_check_three" name="check_option" value="check_three">
							<label for="check_option"><i id="icon_check_3" class="fas fa-cloud" ></i> check_three</label>
							<br>
							<input type="radio" id="question_three_check_four" name="check_option" value="check_four">
							<label for="check_option"><i id="icon_check_4" class="fas fa-cloud" ></i> check_four </label>
							<br>
							<input type="radio" id="question_three_check_five" name="check_option" value="check_five">
							<label for="check_option"><i id="icon_check_5" class="fas fa-cloud" ></i> check_five </label>
							<br>
							<input type="submit" value="Submit"> </fieldset>
					</div>
					<div>
						<iframe id="iframe_doughnut" name="question_3_doughnut"  ></iframe>
					</div>
				</form>
				
				<form method="post" action="doughnut_chart.jsp" target="question_4_doughnut" >
					<div class="pick">
						<fieldset>
							<legend>4. pick one please</legend>
							<input type="hidden" name="question_number" value="question_four">
							<input type="radio" id="question_four_check_one" name="check_option" value="check_one">
							<label for="check_option"><i id="icon_check_1" class="fas fa-cloud" ></i> check_one </label>
							<br>
							<input type="radio" id="question_four_check_two" name="check_option" value="check_two">
							<label for="check_option"><i id="icon_check_2" class="fas fa-cloud" ></i> check_two </label>
							<br>
							<input type="radio" id="question_four_check_three" name="check_option" value="check_three">
							<label for="check_option"><i id="icon_check_3" class="fas fa-cloud" ></i> check_three </label>
							<br>
							<input type="submit" value="Submit"> </fieldset>
					</div>
					<div>
						<iframe id="iframe_doughnut" name="question_4_doughnut"  ></iframe>
					</div>
				</form>
				
				<form method="post" action="doughnut_chart.jsp" target="question_5_doughnut" >
					<div class="pick">
						<fieldset>
							<legend>5. pick one please</legend>
							<input type="hidden" name="question_number" value="question_five">
							<input type="radio" id="question_five_check_one" name="check_option" value="check_one">
							<label for="check_option"><i id="icon_check_1" class="fas fa-cloud" ></i> check_one </label>
							<br>
							<input type="radio" id="question_five_check_two" name="check_option" value="check_two">
							<label for="check_option"><i id="icon_check_2" class="fas fa-cloud" ></i> check_two </label>
							<br>
							<input type="radio" id="question_five_check_three" name="check_option" value="check_three">
							<label for="check_option"><i id="icon_check_3" class="fas fa-cloud" ></i> check_three </label>
							<br>
							<input type="submit" value="Submit"> </fieldset>
					</div>
					<div>
						<iframe id="iframe_doughnut" name="question_5_doughnut"  ></iframe>
					</div>
				</form>
				<script src="fontawesome_a076d05399.js"></script>
				
<script>

let check = (question_number_check_option) => {
	let question_number = question_number_check_option.split("_")[0]+"_"+question_number_check_option.split("_")[1];
	 let null_check = question_number_check_option.split("_")[2];
	 if( null_check!="null"){
		 document.getElementById(question_number_check_option).checked = true;
		 let form = document.getElementById(question_number);
		 form.submit();
	 }
	} 
 
let question_number_check_option = "<%= userDAO.read_check_option_in_user("question_1",userID ) %>";
check(question_number_check_option);

question_number_check_option = "<%= userDAO.read_check_option_in_user("question_2", userID ) %>";
check(question_number_check_option);

question_number_check_option = "<%= userDAO.read_check_option_in_user("question_3", userID ) %>";
check(question_number_check_option);
question_number_check_option = "<%= userDAO.read_check_option_in_user("question_4", userID ) %>";
check(question_number_check_option);
question_number_check_option = "<%= userDAO.read_check_option_in_user("question_5", userID ) %>";
check(question_number_check_option);
</script>
				
</body>
</html>