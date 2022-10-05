<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.css" />
        <link rel="stylesheet" href="login_join.css">
        <title>Just Pick</title>
    
    </head>
    <body>
  		<div id="div_menu">
			<button type="button" onclick="location.href='login.jsp'">sign in</button>
		</div>
        <div class="container">
            <div class="col-lg-4"></div>
            <div class="col-lg-4">
                <div class="jumbotron" style="padding-top: 20px;">
                    <form method="post" action="joinAction.jsp">
                        <h3 style="text-align: center;">sign up</h3>
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="ID" name="userID" maxlength="20" />
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="password" name="userPassword" maxlength="20" />
                        </div>
                        <div class="form-group" style="text-align: center;">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary active"> <input type="radio" name="userGender" autocomplete="off" value="male" checked />male </label>
                                <label class="btn btn-primary active"> <input type="radio" name="userGender" autocomplete="off" value="female" checked />female </label>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary form-control" value="sing up" />
                    </form>
                </div>
            </div>
            <div class="col-lg-4"></div>
        </div>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.js"></script>
    </body>
</html>
