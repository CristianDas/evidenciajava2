  <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
  <!DOCTYPE html>
  <html>
  <head>
    <title>Formulario de Registro</title>
    <link rel="stylesheet" type="text/css" href="registrarse.css">
  </head>
  <body>
    <CENTER><h1>REGISTRATE EN REDDIT!!!</h1></CENTER>
        <style>
            
    body{
        background: linear-gradient(#7c7c81, #b87717)
    }
    .container {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f2f2f2;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      }
      


      H1{
        background-color: #e0490d;
        color: rgb(0, 0, 0);
      }
      h2 {
        text-align: center;
        margin-bottom: 20px;
        color: #333;
      }
      
      form {
        display: flex;
        flex-direction: column;
      }
      
      .form-group {
        margin-bottom: 20px;
      }
      
      label {
        display: block;
        font-weight: bold;
        margin-bottom: 10px;
        color: #555;
      }
      
      input[type="text"],
      input[type="email"],
      input[type="password"] {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 4px;
        background-color: #f9f9f9;
        color: #333;
      }
      
      input[type="text"]:focus,
      input[type="email"]:focus,
      input[type="password"]:focus {
        outline: none;
        background-color: #e6e6e6;
      }
      
      button[type="submit"] {
        display: block;
        width: 100%;
        padding: 12px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        transition: background-color 0.3s ease;
      }
      
      button[type="submit"]:hover {
        background-color: #45a049;
      }
      
      button[type="submit"]:focus {
        outline: none;
      }
      
      .button-wrapper {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 20px;
      }
      
      .button-wrapper button[type="submit"] {
        margin-bottom: 10px;
      }
      
      .button-wrapper a {
        color: #666;
        text-decoration: none;
        transition: color 0.3s ease;
      }
      
      .button-wrapper a:hover {
        color: #333;
      }
      
        </style>
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

      <a href="MiServlet?op=volver">Volver</a>
      <a href="MiServlet?op=loginfacebook">¿Ya tienes una cuenta?</a>
    </div>
  </form>
</div>
</body>
</html>


