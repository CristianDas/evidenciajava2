<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Formulario de Registro</title>
  <link rel="stylesheet" type="text/css" href="registrarse.css">
</head>
<body>
  <style>
    .alert {
  padding: 20px;
  background-color: #36f446;
  color: white;
  font-size: 18px;
}
.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}
.closebtn:hover {
  color: black;
}
  </style>
  <h1>REGISTRARSEE</h1>
  <div class="container">
    <form action="RegistroUsuario" method="post">
      <label for="nombre">Nombre:</label>
      <input type="text" id="nombre" name="nombre" required><br><br>
      
      <label for="correo_electronico">Correo Electrónico:</label>
      <input type="email" id="correo_electronico" name="correo_electronico" required><br><br>
      
      <label for="contrasena">Contraseña:</label>
      <input type="password" id="contrasena" name="contrasena" required><br><br>
      
      <input type="submit" value="Registrar">
    </form>
    
    <div class="links">
      <a href="MiServlet?op=volver">Volver</a>
      <a href="MiServlet?op=loginfacebook">¿Ya tienes una cuenta?</a>
    </div>
  </div>
</body>
</html>
