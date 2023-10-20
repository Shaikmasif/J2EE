<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
        <link type="text/css" rel="stylesheet" href="LoginStyle.css">
    </head>
    <body>
        <div>
        <div class="title-bar"><h1>ShopNest</h1></div>
        </div>
       <div class="out-container">
        <div class="container">
            <div class="heading"><u>LOGIN</u><br><P style="font-size: large;font-style: italic;">Welcome ShopNestian!</P></div>
            <div class="form">
            <form action="login" method="post">
                <div class="name">
                    <label><b>User Name</b></label><br/><input type="text" required name="uname" placeholder="Enter Your Name"/>
                </div>
                <div class="password">
                    <label><b>Password</b></label><br/><input type="password" required name="pass" placeholder="Enter Your Password"/>
                </div>
                <div class="submit">
                    <input type="submit">
                </div>
                <div class="register">
                    New User?<a href="register.jsp">Register Here</a>
                </div>
            </form>
            </div>
        </div>
        </div>
        <div class="footer-container">
            <footer class="footer">@copyright2023</footer>
            </div>
        </div>
    </body>
</html>