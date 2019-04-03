
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
@WebServlet(urlPatterns = {"/Register"})
public class Register extends HttpServlet {
    
    LoginDao dao = new LoginDao();
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String uname = request.getParameter("uname1");
        String pass = request.getParameter("pass1");
        
        if((uname!="" && pass!="")&&(!dao.check(uname, pass))){
            //if user is not exist in db
            dao.addUser(uname, pass);
            HttpSession session = request.getSession();
            //for login agter succesful reg
            String note = "You can log in now!";
            session.setAttribute("note", note);
            session.setAttribute("username", uname);              
            response.sendRedirect("index.jsp");        
           }else{response.sendRedirect("index.jsp");}
        }
    }
        

    
    
    
