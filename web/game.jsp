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
                <a href="stats.jsp">Statistics</a>
                <a href="aboutus.jsp">About Us</a>
                <input type="submit" value="Logout"></p>
            </form>
        </div> 
        <h2>The Bull-Cow Game</h2>
        <ul>
            <li>You're about to guess a 4-digit number</li>
            <li>The digits are all distinct</li>
            <li>Cows means number of right digits, without considering it's position</li>
            <li>Bulls represents both right digit and position</li>
            <li>Good Luck!</li>
        </ul>
        <div>
            <form action="Generate">
            <p>At first, generate random number!</p>
             <input type="submit" value="Generate">
            </form>
        </div>
         <p>Guess the number:</p>
         <form action="Check" method="post">
             <input name="guess" value="">
             <input type="submit" value="Check">
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
