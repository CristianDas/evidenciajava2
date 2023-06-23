<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Formulario de Iniciar Sesión</title>
  <link rel="stylesheet" type="text/css" href="loginf.css">
</head>
<body>
  <div class="container">
    <h2>INICIAR SESION</h2>
    <form action="IniciarSesionServlet" method="post">
      <div class="form-group">
        <label for="correo_electronico">Correo Electrónico:</label>
        <input type="email" id="correo_electronico" name="correo_electronico" required>
      </div>
      
      <div class="form-group">
        <label for="contrasena">Contraseña:</label>
        <input type="password" id="contrasena" name="contrasena" required>
      </div>
      
      <div class="button-wrapper">
        <button type="submit">Iniciar Sesión</button>
      </div>
    </form>
    
    <div class="links">
      <a href="MiServlet?op=volver">Volver</a>
      <a href="MiServlet?op=rfacebook">REGISTRARSE</a>
    </div>
  </div>
</body>
</html>
