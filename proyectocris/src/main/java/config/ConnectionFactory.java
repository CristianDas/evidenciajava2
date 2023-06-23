package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
    private static final String URL = "jdbc:mysql://localhost:3307/facebook";
    private static final String USER = "root";
    private static final String PASSWORD = "";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Conexión Exitosa");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error de conexión a la base de datos: " + e.getMessage());
        }
        return connection;
    }
    public static void main(String[] args) {
        getConnection();    
    }
}
