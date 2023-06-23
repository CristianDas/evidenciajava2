
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;

public class MiServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String opcion = request.getParameter("op");

       
    if (opcion != null) {
        if (opcion.equals("volver")) {
            response.sendRedirect("index.jsp");
        } else if (opcion.equals("loginfacebook")) {
            response.sendRedirect("loginf.jsp");
        } else if (opcion.equals("loginreddit")) {
            response.sendRedirect("loginreddit.jsp");
        } else if (opcion.equals("reddit")) {
            response.sendRedirect("reddit.jsp");
        } else if (opcion.equals("facebook")) {
            response.sendRedirect("facebook.jsp");
        } else if (opcion.equals("rfacebook")) {
            response.sendRedirect("registrarse.jsp");
        } else if (opcion.equals("rreddit")) {
            response.sendRedirect("registrarsereddit.jsp");
        } else {
            response.sendRedirect("error.jsp");
        }
    } else {
        response.sendRedirect("error.jsp");
    }
}
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username.equals("cris") && password.equals("1234")) {
            response.sendRedirect("facebook.jsp");
        } else {
            response.sendRedirect("index.jsp?error=1");
        }
        
    }
}
