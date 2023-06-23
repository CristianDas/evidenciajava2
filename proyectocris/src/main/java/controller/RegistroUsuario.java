package controller;
import model.UsuarioDAO;
import model.UsuarioVO;
import config.ConnectionFactory;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public class RegistroUsuario extends HttpServlet {
    private UsuarioDAO usuarioDAO;

    @Override
    public void init() throws ServletException {
        super.init();
        Connection connection = ConnectionFactory.getConnection();
        usuarioDAO= new UsuarioDAO(connection);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String correo = request.getParameter("correo_electronico");
        String contraseña = request.getParameter("contrasena");

        UsuarioVO usuario = new UsuarioVO(nombre, correo, contraseña);

        try {
            usuarioDAO.insertUser(usuario);
            response.sendRedirect("RegistroExitoso.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<UsuarioVO> usuarios = usuarioDAO.obtenerUsuarios();
            request.setAttribute("usuarios", usuarios); // Establecer la lista de usuarios como atributo en la solicitud
            request.getRequestDispatcher("ConsultaUsuarios.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
