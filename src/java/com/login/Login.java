
package com.login;

import com.login.dao.LoginDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author bystr
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {

    LoginDao dao = new LoginDao();
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass"); 

        if(dao.check(uname, pass)){
            
            HttpSession session = request.getSession();
            int id = dao.getId(uname);
            session.setAttribute("id", id);
            session.setAttribute("username", uname);
            response.sendRedirect("game.jsp");
  
        }else{response.sendRedirect("index.jsp");}}

        
    }
    


