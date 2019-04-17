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
        <link rel="stylesheet" href="stats.css">
    </head>
    <body>
        <div align="center">
            <%
                // to delete cache after logout
                // works with HTTP 1.1
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
                //HTTP 1.0
                response.setHeader("Pragma", "no-cache");
                // check if logged in
                if (session.getAttribute("username") == null) {
                    response.sendRedirect("index.jsp");
                }

            %>
            <div align="center">
                <div>
                    <form action="Logout">
                        <ul class="ulc">
                            <li class="firstel">Hello, ${username}!</li>
                            <li class="navi"><a href="game.jsp">Game Page</a></li>
                            <li class="navi"><a href="aboutus.jsp">About Us</a></li>
                            <li class="navi"><input type="submit" value="Logout" class="logo"></p></li>
                        </ul>
                    </form>
                </div> 
                <div align="center">
                    <h2>Your Statistic</h2>
                    <div align="center">
                        <ul  class="enums">
                            <li class="navi">Try Count: 
                                <% if (session.getAttribute("tryCounter") != null) {
                        out.println(session.getAttribute("tryCounter").toString());
                    }%></li><br>
                            <li class="navi">Answers: 
                                <%
                                    if (session.getAttribute("answers") != null) {
                                        out.println(session.getAttribute("answers").toString());
                                    } else {
                                        out.println("String is empty :(");
                                    }
                                %>
                            </li><br>
                        </ul>
                    </div>
                </div>
            </div>
    </body>
</html>
