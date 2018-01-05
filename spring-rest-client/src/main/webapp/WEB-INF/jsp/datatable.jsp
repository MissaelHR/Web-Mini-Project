<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title >Table Data</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>

</head>
<body>
<h1 align="center">Inmuebles Table Data</h1>

  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
      <a class="navbar-brand" href="/spring-rest-client">Home</a>
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
          <h1 class="display-3">Data Table</h1>
          <h2 class="display-5">Inmuebles</h2>
         </div>
         <br>
         
         <div class="container">
         
  <table class="table">
    <thead>
      <tr>
            <th>Id</th>
			<th>Tipo</th>
			<th>Operacion</th>
			<th>Localizacion</th>
			<th>Superficie</th>
			<th>Precio</th>
      </tr>
    </thead>
    <tbody>
 <c:forEach items="${persons}" var="person">	
		<tr>
			<td><c:out value=" ${person.id}" /></td>
			<td><c:out value="${person.tipo}" /></td>
			<td><c:out value="${person.operacion}" /></td>
			<td><c:out value="${person.provincia}" /></td>
			<td><c:out value="${person.superficie} m2" /></td>
			<td><c:out value="$ ${person.precio_venta}" /></td>		
		</tr>
	</c:forEach>
  </table>
</div>
         
         
         
      

    </main>
    <footer class="container">
      <p>&copy; Missael Hernandez Rosado 2017-2018</p>
    </footer>
</body>
</html>