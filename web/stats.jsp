<%-- 
    Document   : stats
    Created on : Mar 30, 2019, 3:51:20 PM
    Author     : bystr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Statistics</title>
    </head>
    <body>
        <div align="center">
        <%
            // to delete cache after logout
            // works with HTTP 1.1
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
            //HTTP 1.0
            response.setHeader("Pragma","no-cache");
            // check if logged in
            if(session.getAttribute("username")==null){
                response.sendRedirect("index.jsp");
            }
            
            %>
             <div>
            <form action="Logout">
                <p>Hello, ${username}!
                <a href="game.jsp">Game Page</a>
                <a href="aboutus.jsp">About Us</a>
                <input type="submit" value="Logout"></p>
            </form>
        </div> 
        <div align="center">
        <h3>Your Statistic</h3>
        <div align="center">
            <ul>
                <li>Try Count: 
                <%
            if(session.getAttribute("tryCounter")!=null){
            out.println(session.getAttribute("tryCounter").toString());
            }
                %></li><br>
                <li>Answers: </li><br>
                <%
            if(session.getAttribute("answers")!=null){
            out.println(session.getAttribute("answers").toString());
            }else{
                out.println("String is empty :(");}
                %>
                <br>
            </ul>
        </div>
        </div>
        </div>
    </body>
</html>
