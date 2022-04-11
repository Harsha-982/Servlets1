import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/sessionsServlet")
public class Login extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
        PrintWriter out=response.getWriter();
        response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");
        String username=request.getParameter("username");
        String password=request.getParameter("password");

        HttpSession session=request.getSession();
        session.setAttribute("username",username);
        if(username.equals("Harshavardhini")){
            request.getRequestDispatcher("/DataEntry.jsp").forward(request,response);
        }
        else{
            out.println("Wrong username please enter again");
            request.getRequestDispatcher("Login.jsp").include(request,response);
        }

    }
}
