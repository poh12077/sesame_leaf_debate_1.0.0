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

    <header>
 <h1>just select</h1>
    
    </header>
    <main>
        <div id="question1">
            <form method="post" action="action.jsp"  >
                  <label>1. pick one please </label><br>
                  <input type="hidden" name="number" value="1">
                <input type="radio" name="check" value="1">
                  <label> one </label><br>
                  <input type="radio" name="check" value="2">
                    <label> two </label>  <br>
                <input type="radio" name="check" value="3">
                  <label> three </label><br>
                <input type="submit" value="Submit">
            </form>
          
        </div>
        <div id="question2">
            <form method="post" action="action.jsp" >
                  <label>2. </label>  
                  <input type="hidden" name="number" value="2">
                <input type="radio" name="check" value="1">
                  <input type="radio" name="check" value="2">  
                <input type="radio" name="check" value="3">
                <input type="submit" value="Submit">
            </form>
        </div>
          <div id="question3">
            <form method="post" action="action.jsp" >
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
   
    </footer>
</body>

</html>