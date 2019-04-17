<%-- 
    Document   : game
    Created on : Mar 30, 2019, 3:39:32 PM
    Author     : bystr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bull-Cow Game</title>
        <link rel="stylesheet" href="game.css">
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
                <li class="navi"><a href="stats.jsp">Statistics</a></li>
                <li class="navi"><a href="aboutus.jsp">About Us</a></li>
                <li class="navi"><input type="submit" value="Logout" class="logo"></p></li>
                </ul>
            </form>
        </div> 
        <h2>The Bull-Cow Game</h2>
       <div>
        <ul class="enums">
            <li>You're about to guess a 4-digit number</li>
            <li>The digits are all distinct</li>
            <li>Cows means number of right digits, without considering it's position</li>
            <li>Bulls represents both right digit and position</li>
            <li>Good Luck!</li>
        </ul>
    </div>
          <div>
            <form action="Generate">
            <p>At first, generate random number!</p>
             <input type="submit" value="Generate" class="subs">
            </form>
        </div>
         <p>Guess the number:</p>
         <form action="Check" method="post">
             <input type="text" name="guess" value="">
             <input type="submit" value="Check" class="subs">
         </form><br>
        <div>
            <% 
            
            if(session.getAttribute("secret")!=null){
            out.println("Secret Numer is generated");
            //or to check yourself :)
            //out.println("Secret Numer is :" + session.getAttribute("secret").toString());
            }
            
            %>
        </div><br>
        <div>
           <% 
              try{
              if(request.getAttribute("result")!=null){  
              out.println("Your answer is: " + request.getAttribute("result"));
              }
              }catch(Exception e){e.printStackTrace();};
               %>
        </div><br>
        <div>
           <% try{
              boolean b = (Boolean) session.getAttribute("isWin");
              if(b == true){
              out.println("Congratulations, you Finally Win!");
              }
              }catch(Exception e){e.printStackTrace(); } 
           %>
        </div>
        </div>
        <div>
       
        </div>
       
         </div>
    </body>
</html>
