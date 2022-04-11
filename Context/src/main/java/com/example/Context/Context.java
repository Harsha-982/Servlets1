package com.example.Context;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

public  class Context extends HttpServlet {
        public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
                PrintWriter pw=response.getWriter() ;
                ServletContext con=getServletContext();
                Enumeration enu= con.getInitParameterNames();
                while(enu.hasMoreElements()){
                        String str=(String) enu.nextElement();
                        String value=con.getInitParameter(str);
                }


        }
}