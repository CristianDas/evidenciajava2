package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
    private Connection connection;

    public UsuarioDAO(Connection connection) {
        this.connection = connection;
    }

    public void insertUser(UsuarioVO usuario) throws SQLException {
        String sql = "INSERT INTO usuario (nombre, correo_electronico, contraseña) VALUES (?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getCorreoElectronico());
            statement.setString(3, usuario.getContraseña());
            statement.executeUpdate();
        }
    }

 

    public List<UsuarioVO> obtenerUsuarios() throws SQLException {
        List<UsuarioVO> usuarios = new ArrayList<>();
        String sql = "SELECT nombre, correo_electronico,contraseña FROM Usuario";
        try (PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                String nombre = resultSet.getString("nombre");
                String correoElectronico = resultSet.getString("correo_electronico");
                String contraseña = resultSet.getString("contraseña");
                UsuarioVO usuario = new UsuarioVO(nombre, correoElectronico, contraseña);
                usuarios.add(usuario);
            }
        }
        return usuarios;
    }
}
