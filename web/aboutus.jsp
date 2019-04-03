<%-- 
    Document   : aboutus
    Created on : Mar 30, 2019, 3:30:44 PM
    Author     : bystr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bio</title>
    </head>
    <body>
        <div align="center">
         <%
            // to delete cache after logout: works with HTTP 1.1
            response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
            //HTTP 1.0
            response.setHeader("Pragma","no-cache");
            // check if logged in
            if(session.getAttribute("username")==null)
                {response.sendRedirect("index.jsp");}
        %>
         <div>
            <form action="Logout">
                <p>Hello, ${username}!
                    <a href="game.jsp">Game Page</a>
                <a href="stats.jsp">Statistics</a>
                
                <input type="submit" value="Logout"></p>
            </form>
        </div> 
        <div>
        Prod. by MishGUN 2019<br>
        All rights are all right
        </div>
        <div> 
            <p>Such a lovely song..</p>
            <iframe width="480" height="320" src="https://www.youtube.com/embed/em0MknB6wFo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>
        </body>
</html>
