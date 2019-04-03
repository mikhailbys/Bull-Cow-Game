
package com.numbers;
import com.login.dao.LoginDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/Check"})
public class Servlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {

        CheckVar cv = new CheckVar();
        
        HttpSession session = request.getSession();
        //create a seret num
        int secretNum = Integer.parseInt(session.getAttribute("secret").toString()); 

        // fetch data from jsp
        String s = request.getParameter("guess");
        if (s!=""){
        int guessNum = Integer.parseInt(s);
        // set BK string output
        String result = cv.check(secretNum, guessNum);
        RequestDispatcher ds = request.getRequestDispatcher("game.jsp");
        // to set  String value in the attribute
        request.setAttribute("result", result); 

         //for results manipulating
        String answers = session.getAttribute("answers").toString();
        int tryCounter = (Integer) session.getAttribute("tryCounter");
        ResultCounter resultCounter = new ResultCounter();
        tryCounter = resultCounter.tryCounter(tryCounter);
        answers = resultCounter.stringConcatenator(answers,result); //TODO
        session.setAttribute("answers",answers);
        session.setAttribute("tryCounter",tryCounter);

        // if answer is correct
        boolean isWin = false;
        if(guessNum == secretNum){
            isWin = true;
            session.setAttribute("isWin", isWin);
            LoginDao ld = new LoginDao();
            //save game results
            int id = (Integer) session.getAttribute("id");
            ld.saveGame(id, answers, tryCounter);
            ds.forward( request, response );
        }
         ds.forward( request, response );
        }else{response.sendRedirect("game.jsp");}
      
    }

}


  
