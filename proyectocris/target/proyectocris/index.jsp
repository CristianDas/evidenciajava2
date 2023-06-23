<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
  <link rel="stylesheet" type="text/css" href="">
</head>
<body>
  <header>
    <h1>CRISTIAN REDESS</h1>
  </header>
  
  <nav>
    <ul>
      <li><a href="#">Inicio</a></li>
      <li><a href="MiServlet?op=loginfacebook">Facebook</a></li>
      <li><a href="MiServlet?op=loginreddit">Reddit</a></li>
    </ul>
  </nav>
  <style>

/* Estilos generales */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #e9ebe0;
  }
  
  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
  }
  
  /* Estilos para el encabezado */
  header {
    background-color: #ffffff;
    color: #000000;
    padding: 20px;
    text-align: center;
  }
  
  h1 {
    font-size: 32px;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 2px;
  }
  
  /* Estilos para la barra de navegación */
  nav {
    background-color: #000000;
    padding: 10px;
    text-align: center;
    border-bottom: 1px solid #f6f1f1;
  }
  
  nav ul {
    list-style-type: none;
    padding: 0;
    margin: 0;
  }
  
  nav ul li {
    display: inline-block;
    margin-right: 10px;
  }
  
  nav ul li a {
    color: #ffffff;
    text-decoration: none;
    padding: 50px 10px;
    border-radius: 5px;
    transition: background-color 0.3s ease;
  }
  
  nav ul li a:hover {
    background-color: #1838ef;
    color: #fff;
  }
  
  nav ul li a:active {
    background-color: #666;
    color: #fff;
  }
  
  /* Estilos para el contenido principal */
  main {
    padding: 20px;
    text-align: center;
  }
  
  h2 {
    font-size: 24px;
    font-weight: bold;
    margin-bottom: 20px;
    color: #333;
  }
  
  p {
    font-size: 16px;
    line-height: 1.5;
    color: #666;
  }
  
  img {
    max-width: 80%;
    height: auto;
    display: block;
    margin: 0 auto;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
  }
  
  img:hover {
    transform: scale(1.1);
  }
  
  /* Estilos para el pie de página */
  footer {
    background-color: #333;
    color: #fff;
    padding: 10px;
    text-align: center;
    font-size: 14px;
  }
  
  nav ul li {
    display: inline-block;
    margin-right: 0px;
  }
  
  nav ul li:last-child {
    margin-right: 0;
  }
    
  .image-container {
  position: relative;
  display: inline-block;
}

.overlay {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  background-color: rgba(0, 0, 0, 0.6);
  color: #fff;
  padding: 10px;
  border-radius: 5px;
  font-size: 16px;
  font-weight: bold;
  opacity: 0;
  transition: opacity 0.3s ease;
}

.image-container:hover .overlay {
  opacity: 1;
}



  </style>
  <main>
    <h2>Redes Disponibles...</h2>
    <div class="image-container">
      <a href="MiServlet?op=loginfacebook">
        <img src="facebook.jpg" alt="Facebook" />
        <div class="overlay">Haz clic aquí</div>
      </a>
    </div>
    <div class="image-container">
      <a href="MiServlet?op=loginreddit">
        <img src="reddit.jpg" alt="Reddit" />
        <div class="overlay">Haz clic aquí</div>
      </a>
    </div>
  </main>