
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%><!DOCTYPE html>
<html>
<head>
  <title>Reddit</title>
  <style>
    /* Estilos CSS para la página */
    body {
      font-family: Arial, sans-serif;
      background: linear-gradient(#bc720b, #f3e2e2);
      margin: 0;
      padding: 20px;
    }
    
    h1 {
      text-align: center;
      color: #f9f0f0;
      margin-bottom: 30px;
    }
    
    form {
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      margin-bottom: 20px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    input[type="text"],
    textarea {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }
    
    input[type="text"]:focus,
    textarea:focus {
      outline: none;
      border-color: #666;
    }
    
    button[type="submit"] {
      background-color: #333;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }
    
    button[type="submit"]:hover {
      background-color: #555;
    }
    
    .post {
      margin-bottom: 20px;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    .post h3 {
      color: #333;
      margin-top: 0;
      font-size: 18px;
      margin-bottom: 10px;
    }
    
    .post p {
      font-size: 16px;
      line-height: 1.5;
    }
  </style>
</head>
<body>
  <h1>Reddit</h1>

  <!-- Formulario para publicar un post -->
  <form>
    <input type="text" id="title" placeholder="Título" required>
    <textarea id="content" placeholder="Contenido del post..." required></textarea>
    <button type="submit">Publicar</button>
  </form>

  <!-- Lista de posts -->
  <div id="posts-list">
    <!-- Ejemplo de un post -->
    <div class="post">
      <h3>Título del post</h3>
      <p>Contenido del post...</p>
    </div>

    <!-- Ejemplo de otro post -->
    <div class="post">
      <h3>Título del post</h3>
      <p>Contenido del post...</p>
    </div>
  </div>
</body>
</html>

