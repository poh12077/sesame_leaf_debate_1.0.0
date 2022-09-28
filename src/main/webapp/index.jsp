<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.io.PrintWriter"%>
		<%@ page import="user.UserDAO"%>
			<!DOCTYPE html>
			<html lang="en">

			<head>
				<meta charset="utf-8">
				<meta name="viewport" content="width=device-width, initial-scale=1">
				<link rel="stylesheet" href="index.css"> </head>

			<body>
				<%
			
			 	 if(session.getAttribute("userID") == null )
				    {
				        PrintWriter script = response.getWriter();
				        script.println("<script>");
				        script.println("alert('you have to sign in first .')");
				        script.println("location.href = 'login.jsp'");
				        script.println("</script>");
				    }
				%>
					<h1>just select</h1> <a href="logout.jsp">sign out</a>
					<form method="post" action="action.jsp">
						<fieldset>
							<legend>1. pick one please</legend>
							<input type="hidden" name="question_number" value="question_one">
							<input type="radio" name="check_option" value="check_one">
							<label for="check_option"> check_one </label>
							<br>
							<input type="radio" name="check_option" value="check_two">
							<label for="check_option"> check_two </label>
							<br>
							<input type="radio" name="check_option" value="check_three">
							<label for="check_option"> check_three </label>
							<br>
							<input type="submit" value="Submit"> 
						</fieldset>
					</form>
						
					<form method="post" action="action.jsp">
						<fieldset>
							<legend>2. pick one please</legend>
							<input type="hidden" name="question_number" value="question_two">
							<input type="radio" name="check_option" value="check_one">
							<label for="check_option"> check_one </label>
							<br>
							<input type="radio" name="check_option" value="check_two">
							<label for="check_option"> check_two </label>
							<br>
							<input type="radio" name="check_option" value="check_three">
							<label for="check_option"> check_three </label>
							<br>
							<input type="submit" value="Submit"> 
						</fieldset>
					</form>
			</body>

			</html>