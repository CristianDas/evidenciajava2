import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import config.ConnectionFactory;

public class IniciarSesionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correoElectronico = request.getParameter("correo_electronico");
        String contrasena = request.getParameter("contrasena");

        try (Connection con = ConnectionFactory.getConnection()) {
            String sql = "SELECT * FROM Usuario WHERE correo_electronico = ? AND Contraseña = ?";
            PreparedStatement statement = con.prepareStatement(sql);
            statement.setString(1, correoElectronico);
            statement.setString(2, contrasena);

    
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
    
                response.sendRedirect("facebook.jsp");
            } else {
                
                response.sendRedirect("error.jsp");
            }
        } catch (SQLException e) {
            System.out.println("Error al realizar el inicio de sesión: " + e.getMessage());
            response.sendRedirect("error.jsp"); 
        }
    }
}
