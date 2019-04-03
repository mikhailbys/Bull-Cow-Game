
package com.numbers;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Generate"})
public class RandomServlet extends HttpServlet {
    
     protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
         
         HttpSession session = request.getSession();
         //if generate new number after win
         if(session.getAttribute("isWin")!=null){
         boolean isWin = (Boolean) session.getAttribute("isWin");
         isWin = false;
         session.setAttribute("isWin", isWin);
         }
         //generate secret number
         RandomGenerator rd = new RandomGenerator();
         int secret = rd.generate();
         //create results      
         String answers = "";
         int tryCounter = 0;
         //
         session.setAttribute("answers",answers);
         session.setAttribute("tryCounter",tryCounter);
         session.setAttribute("secret", secret);
         response.sendRedirect("game.jsp");
         
     }
}
