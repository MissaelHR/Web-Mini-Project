# Web Mini-Project 
Web Mini-Project: Spring Framework, JAVA, Server REST, Client REST, BD MySQL, D3.js, Highcharts.
# Requisitos previos
1.	Spring Tool Suite
2.	JDK 8
3.	MySQL
4.	Tomcat Server Apache v8 o superior
5.	Conexión a Internet para descarga de gestión de dependencias Maven y acceso a librerías.
# Instrucciones
1.	Clona o descarga el proyecto, si lo descargas como zip descomprímelo.
2.	Dentro de la carpeta bd se encuentra el script para MySQL para la base de datos junto con la data, el nombre de la base de datos es: “inmueblesdb”.
3.	Abrir Spring Tool Suite e importar ambos proyectos: “spring-rest-server” y “spring-rest-client” desde la sección File -> Open Projects from File System.
4.	Una vez importados dar clic derecho en cada uno de los projectos y realizar desde Maven -> Update Project, esto para actualizar y cargar todas las dependencias.
5.	La configuración de acceso a la base de datos se encuentra dentro del proyecto “spring-rest-server” ir a Java Resources y dentro del package “com.missaelhr.rest.service” con el nombre de “PersonService.java”
6.	NOTA: El servidor se encuentra localizado localmente en el puerto 8080.
7.	Ahora dar clic derecho en el proyecto “spring-rest-server” y arrancarlo en el servidor solicitado en los requisitos, si el servidor no se encuentra en “localhost:8080” se debe modificar el código debido a que las pruebas RESTAssured y la recepción del servicio del lado del cliente provienen de esa dirección.
8.	NOTA: Es importante agregar ambos proyectos al servidor para que puedan ejecutarse y visualizarse correctamente.
# Ejecutando las pruebas
1. Server REST: http://localhost:8080/spring-rest-server/ 
2. Client REST: http://localhost:8080/spring-rest-client/ 
3. Client REST (Data Table): http://localhost:8080/spring-rest-client/inmuebles/listall 
4. Client REST (Graphics): http://localhost:8080/spring-rest-client/inmuebles/graphics 
5. NOTA: Dentro de “Home” se encuentran breves características del proyecto realizado. 
# Construido con
1. Spring Tool Suite: Framework
2. JAVA
3. Maven - Gestión de dependencias
4. D3.js 
5. Highcharts
6. Bootstrap
7. MySQL
# Autor
•	Missael Hernández Rosado – Web Mini-Project 
