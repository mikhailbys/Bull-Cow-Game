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
        <link rel="stylesheet" href="aboutus.css">
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
                <ul class="ulc">
                  <li class="firstel">Hello, ${username}!</li>
                  <li li class="navi"><a href="game.jsp">Game Page</a></li>
                  <li li class="navi"><a href="stats.jsp">Statistics</a></li>
                  <li li class="navi"><input type="submit" value="Logout" class="logo"></p></li>
            </form>
        </div> 
         <div class="texts">
        <h2>Prod. by MishGUN 2019<br>
        All rights are all right<br></h3>
        </div>
        <div  class="video"> 
            <p class="ps">Such a lovely song..</p>
            <iframe width="720" height="500" src="https://www.youtube.com/embed/em0MknB6wFo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen class="frame"></iframe>
        </div>
    </div>
        </body>
</html>
