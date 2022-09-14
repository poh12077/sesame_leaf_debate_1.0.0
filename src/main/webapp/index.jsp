<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
    *{
/*      box-sizing: border-box; */
    }
        html,
        body {
            width: 100%;
            height: 100%;
        }

        header {
            background: lightgray;
             text-align: center;
            height: 10%;
        }

        main {
            background: #f2f4f7;
            height: 80%;
        }

        footer {
            background: darkgray;
             text-align: center;
            height: 10%;
        }

        #question1 {
            height: 10%;
        }

        #question2 {
            height: 10%;
        }
         #question3 {
            height: 10%;
        }
    </style>

</head>

<body>

    <header>
 <h1>just select</h1>
    
    </header>
    <main>
       
        <div id="question1">
            <form method="post" action="action.jsp">
                  <label>1. </label>
                  <input type="hidden" name="number" value="1">
                <input type="radio" name="check" value="1">
                  <input type="radio" name="check" value="2">  
                <input type="radio" name="check" value="3">
                <input type="submit" value="Submit">
            </form>
        </div>
        <div id="question2">
            <form method="post" action="action.jsp">
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
    <h3> developed by young hwa</h3>
    </footer>
</body>

</html>