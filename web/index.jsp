<%-- 
    Document   : index
    Created on : Mar 30, 2019, 3:30:29 PM
    Author     : bystr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <div align="center">
        <h2>Just one more step..</h3>
         <form action="Login" method="post">
                Enter username: <input type="text" required PLACEHOLDER="login" name="uname"><br>
                <br>
                Enter password: <input type="password" required PLACEHOLDER="password" name="pass"><br>
                <br>
                Already have an account? <input type="submit" value="Log in">
                </form>
                <form action="Register" method="post">
                <br>
                Enter username: <input type="text" required PLACEHOLDER="login" name="uname1"><br>
                <br>
                Enter password: <input type="password" required PLACEHOLDER="password" name="pass1"><br>
                <br>
                I'm a freshman <input type="submit" value="Register">
            </form><br>
        <div>
            <%
                if(session.getAttribute("note")!=null){
                    out.println(session.getAttribute("note").toString());
                }
                %>
        </div>
        </div>
    </body>
</html>
