package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import beans.User;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet 
{
        protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException  
        {
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            try 
            {
                User user = new User();

                user.setNombre(request.getParameter("Nombre"));
                user.setPassword(request.getParameter("Password"));

                if(User.LoginUser(request.getParameter("Nombre"),request.getParameter("Password")))
                {
                    User us = new User();
                    us.setNombre(String.valueOf(request.getParameter("Nombre")));
                    us.GetUser();

                    HttpSession sessionUser = request.getSession();
                    sessionUser.setAttribute("Nombre",us.getNombre());

                    response.setContentType("text/html;charset=UTF-8");
                    response.getWriter().write("True");
                }else{
                    response.setContentType("text/html;charset=UTF-8");
                    response.getWriter().write("False");
                }  
            } finally {out.close();}
        }
        
        @Override
        protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
            processRequest(request, response);
        }
        
        @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
        {
            processRequest(request, response);
        }
        
        @Override
        public String getServletInfo() 
        {
            return "Short description";
        }
}   