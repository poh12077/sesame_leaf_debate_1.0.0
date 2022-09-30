<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width" , initial-scale="1">
		<!-- 반응형 웹에 사용하는 메타태그 -->
		<link rel="stylesheet" href="css/bootstrap.css">
		<style>
		body {
			background-color: #05c46b;
		}
		
		button {
			margin: 7px;
			float: right;
			color: black;
			text-align: center;
			padding: 7px 7px;
			 font-size: 16px;
		}
		
		#div_menu {
			color: #05c46b;
			height: 70px;
		}
		h1{
/* 		 display: inline-block; */
		   text-align: center;
		   background-color:DodgerBlue;
		}
		</style>
		<title>Just Pick</title>
	</head>

	<body>
<!-- 	<h1>My First Heading</h1> -->
	
		<div id="div_menu">
			<button type="button" onclick="location.href='join.jsp'">sign up</button>
		</div>
		<div class="container">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="jumbotron" style="padding-top:20px;">
					<form method="post" action="loginAction.jsp">
						<h3 style="text-align:center;">sign in</h3>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="ID" name="userID" maxlength='20'> </div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="password" name="userPassword" maxlength='20'> </div>
						<input type="submit" class="btn btn-primary form-control" value="sign in"> </form>
				</div>
			</div>
			<div class="col-lg-4"></div>
		</div>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>
	</body>

	</html>