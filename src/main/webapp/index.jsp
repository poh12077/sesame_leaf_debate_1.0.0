<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="user.UserDAO"%>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="index.css"> 
			</head>

		<body>
				<h1>just select</h1> 
		
				<form method="post" action="action.jsp">
					<label>1. pick one please </label>
					<br>
					<input type="hidden" name="number" value="1">
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
			
				<form method="post" action="action.jsp">
					<label>2. pick one please </label>
					<br>
					<input type="hidden" name="number" value="2">
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