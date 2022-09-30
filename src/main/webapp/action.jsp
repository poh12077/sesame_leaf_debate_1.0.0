<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%request.setCharacterEncoding("UTF-8");%>

<head>
<meta http-equiv="Content-Type" content="text/html; c harset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  	 <link rel="stylesheet" href="index.css">
<!--   	 <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script> -->
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
				<form method="post" action="doughnut_chart.jsp" target="question_1_doughnut" >
					<div class ="pick">
					<fieldset>
							<legend>남친(여친)이 내 친구 깻잎을 떼어 주면..?</legend>
							<input type="hidden" name="question_number" value="question_one">
							<input type="radio" id="question_one_check_one" name="check_option" value="check_one"  style="background-color: #d1d3d1;"  >
							<label for="check_option"  ><i id="icon_check_1" class="fas fa-cloud" ></i> 난 쿨하니까 괜찮다 </label>
							<br>
							<input type="radio" id="question_one_check_two" name="check_option" value="check_two">
							<label for="check_option"  ><i id="icon_check_2" class="fas fa-cloud" ></i> 조금 거슬린다</label>
							<br>
							<input type="radio" id="question_one_check_three" name="check_option" value="check_three">
							<label for="check_option"><i id="icon_check_3" class="fas fa-cloud" ></i> 미친 거 아냐? </label>
							<br>
							<input type="submit" value="Submit"> 
						</fieldset>
				</div>
					<iframe id="iframe_doughnut" name="question_1_doughnut"  ></iframe>
				</form>
				
				<form method="post" action="doughnut_chart.jsp" target="question_2_doughnut" >
					<div class="pick">
						<fieldset>
							<legend>동시에 여려명 썸 타면 바람?</legend>
							<input type="hidden" name="question_number" value="question_two">
							<input type="radio" id="question_two_check_one" name="check_option" value="check_one">
							<label for="check_option"><i id="icon_check_1" class="fas fa-cloud" ></i> 에이~ 아직 사귀는 사이도 아닌데</label>
							<br>
							<input type="radio" id="question_two_check_two" name="check_option" value="check_two">
							<label for="check_option"><i id="icon_check_2" class="fas fa-cloud" ></i> 양심에 찔려서 고민된다 </label>
							<br>
							<input type="radio" id="question_two_check_three" name="check_option" value="check_three">
							<label for="check_option"><i id="icon_check_3" class="fas fa-cloud" ></i> 당근 바람이지! 너무 싫어 </label>
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
							<legend>며칠 전까지 데이트 잘하고 헤어진 썸녀가 갑자기 24시간동안 연락이 안된다면 당신의 생각은 ?</legend>
							<input type="hidden" name="question_number" value="question_three">
							<input type="radio" id="question_three_check_one" name="check_option" value="check_one">
							<label for="check_option"><i id="icon_check_1" class="fas fa-cloud" ></i> 원래 답장이 늦는 사람인가보지 </label>
							<br>
							<input type="radio" id="question_three_check_two" name="check_option" value="check_two">
							<label for="check_option"><i id="icon_check_2" class="fas fa-cloud" ></i> 사고 났나? </label>
							<br>
							<input type="radio" id="question_three_check_three" name="check_option" value="check_three">
							<label for="check_option"><i id="icon_check_3" class="fas fa-cloud" ></i> 어장 </label>
							<br>
							<input type="radio" id="question_three_check_four" name="check_option" value="check_four">
							<label for="check_option"><i id="icon_check_4" class="fas fa-cloud" ></i> 나를 테스트 하는구만 </label>
							<br>
							<input type="radio" id="question_three_check_five" name="check_option" value="check_five">
							<label for="check_option"><i id="icon_check_5" class="fas fa-cloud" ></i> 썸 쫑났네 </label>
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
	 let null_check = question_number_check_option.split("_")[2];
	 if( null_check!="null"){
		 document.getElementById(question_number_check_option).checked = true;
	 }
	} 
 
let question_number_check_option = "<%= userDAO.read_check_option_in_user("question_one",userID ) %>";
check(question_number_check_option);

question_number_check_option = "<%= userDAO.read_check_option_in_user("question_two", userID ) %>";
check(question_number_check_option);

question_number_check_option = "<%= userDAO.read_check_option_in_user("question_three", userID ) %>";
check(question_number_check_option);
question_number_check_option = "<%= userDAO.read_check_option_in_user("question_four", userID ) %>";
check(question_number_check_option);
question_number_check_option = "<%= userDAO.read_check_option_in_user("question_fives", userID ) %>";
check(question_number_check_option);
</script>
				
</body>
</html>