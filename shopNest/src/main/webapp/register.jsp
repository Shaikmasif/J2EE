<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Registration Page</title>
        <link type="text/css" rel="stylesheet" href="RegistrationStyle.css">
        <script>
            function check() {
            var a=document.getElementById("password").value;
            var b=document.getElementById("confirm").value;
            if(a!=b){
                document.getElementById("confirm-span").innerHTML="Password Mismatch......";
                return false;
            }
            if(a.length<8){
                document.getElementById("pass-span").innerHTML="Min 8 Chars";
                return false;
            }
        }
        </script>
    </head>
    <body>
        <div>
        <div class="title-bar"><h1>ShopNest</h1></div>
        </div>
        
       <div class="out-container">
        <div class="container">
            <div class="heading"><u>REGISTRATION</u><br><P style="font-size: large;font-style: italic;">Welcome ShopNestian!</P></div>
            <div class="form">
            <form action="register" method="post" onsubmit="return check()">
                <div class="name">
                    <label><b>User Name<sup style="color: red;">*</sup></b></label><br/>
                    <input type="text" placeholder="Enter the Name" name="uname">
                </div>
                <div class="mail">
                    <label><b>Email<sup style="color: red;">*</sup></b></label><br/>
                    <input type="text" placeholder="Enter the Mail" name="mail">
                </div>
                <div class="password" id="password">
                    <label><b>Password<sup style="color: red;">*</sup></b></label><br/>
                    <input type="password" placeholder="Enter Password" name="pass"><span id="pass-span" style="color: red;font-size: 15px;"></span>
                </div>
                <div class="confirm" id="confirm">
                    <label><b>Confirm Password<sup style="color: red;">*</sup></b></label><br/>
                    <input type="password" placeholder="Confirm Password"><span id="confirm-span" style="color: red;font-size: 15px;"></span>
                </div>
                <div class="gender" id="gender">
                    <label for="gender"><b>Gender<sup style="color: red;">*</sup></b></label>
                    <input type="radio" for="gender" name="gender" value="male"><label>male</label>
                    <input type="radio" for="gender" name="gender" value="female"><label>female</label>
                </div>
                <div class="address" id="address">
                    <label for="address"><b>Address<sup style="color: red;">*</sup></b></label><br/>
                    <textarea rows="3" cols="20" name="address" placeholder="Enter Address"></textarea>
                </div>
                <div class="submit" id="submit">
                    <input type="submit">
                </div>
                <div class="login">
                    Already a User?<a href="login.jsp">Sign In</a>
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