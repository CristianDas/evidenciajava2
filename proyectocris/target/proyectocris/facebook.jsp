<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Mi Página de Comentarios</title>
  <link rel="stylesheet" type="text/css" href="facebook.css">
</head>
<body>
  <h1>Facebook</h1>
  <div id="menu">
    <ul>
      <li>
        <form action="RegistroUsuario" method="get">
    <button type="submit">CONSULTAR USUARIOS</button>

</form>

      </li>
    </ul>
  </div>
  <form action="ComentarioServlet" method="post" enctype="multipart/form-data">
    <textarea id="mensaje" name="mensaje" placeholder="Escribe tu comentario..." required></textarea>

    <button type="submit">Publicar</button>
  </form>
  
  <div class="go-back">
    <a href="MiServlet?op=volver">Volver atrás</a>
  </div>
  
  <div id="comments-list"></div>
</body>
</html>
