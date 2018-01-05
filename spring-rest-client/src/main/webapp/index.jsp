<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <title>Client REST</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
        <title>Client Server</title>
    </head>
    <body>
    

   
       <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="#">Home</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
<div class="collapse navbar-collapse" id="navbarsExampleDefault">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/spring-rest-client/inmuebles/listall">Data Table<span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/spring-rest-client/inmuebles/graphics">Graphics</a>
          </li>

      </div>
         
    </nav>

    <main role="main">

      <!-- Main jumbotron for a primary marketing message or call to action -->
      <div class="jumbotron">
        <div class="container">
          <h1 class="display-2">Mini Web Project</h1>
          <h2 class="display-5">Client REST</h2>
          <p>El mini proyecto que acontinuacion se muestra es parte del cliente REST el cual toma el servicio proporcionado redundadamente
          por el servidor REST. Este proyecto ha tomado los datos CSV de una inmobiliaria española que cuenta con los campos de "Tipo de inmueble",
          "Operacion" ya sea Venta o Alquiler, "Provincia" que es la localizacion del inmueble, "Superficie" basada en m2, y un ultimo campo
          de "Precio". Los datos se han importado a una base de datos en MySQL que a su vez son absorvidos por el servidor REST para 
          manipular la informacion y enviar los datos en formato JSON al cliente, utilizando diversas librerias que van desde JDBC Template
          para la conexion a la BD hasta prueba unitarias y de integracion (JUNIT, RESTAssured)...
          </p>
          </div>
      </div>

      <div class="container">
        <!-- Example row of columns -->
        <div class="row">
          <div class="col-md-4">
            <h2>Table Data</h2>
            <p>Aqui se encuentran los datos provenientes de la base de datos dentro de una tabla</p>
            <p><a class="btn btn-secondary" href="/spring-rest-client/inmuebles/listall" role="button">View details &raquo;</a></p>
          </div>
          <div class="col-md-4">
            <h2>Graphics</h2>
            <p>En este apartado se muestran las graficas correspondientes de acuerdo a los datos, como: precios, tipo de inmuebles, etc...</p>
            <p><a class="btn btn-secondary" href="/spring-rest-client/inmuebles/graphics" role="button">View details &raquo;</a></p>
          </div>
         
        </div>

        <hr>

      </div> <!-- /container -->

    </main>

    <footer class="container">
      <p>&copy; Missael Hernandez Rosado 2017-2018</p>
    </footer>

    </body>
</html>

