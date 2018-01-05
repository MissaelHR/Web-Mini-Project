<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/js/bootstrap.min.js" integrity="sha384-a5N7Y/aK3qNeh15eJKGWxsqtnX/wWdSZSKp+81YjTmS15nvnvxKHuzaWwXHDli+4" crossorigin="anonymous"></script>
<script src="http://d3js.org/d3.v3.min.js"></script>
<script src="https://code.highcharts.com/highcharts.src.js"></script>
<script src="http://code.highcharts.com/modules/exporting.js"></script>
<!-- optional -->
<script src="http://code.highcharts.com/modules/offline-exporting.js"></script>

<title>Graphics</title>
</head>
<body>
<h1 align="center">Inmuebles Graphics</h1>
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
          <h1 class="display-3">Graphics</h1>
          <h2 class="display-5">Inmuebles</h2>
         </div>
         
          </main>

<div id="g1" style="min-width: 410px; height: 500px; max-width: 700px; margin: 0 auto"></div>
<div id="g2" style="min-width: 410px; height: 500px; max-width: 700px; margin: 0 auto"></div>
<div id="g3" style="min-width: 410px; height: 500px; max-width: 700px; margin: 0 auto"></div>
<div id="g4" style="min-width: 1200px; height: 500px; max-width: 1200px; margin: 0 auto"></div>
<div id="g5" style="min-width: 1200px; height: 500px; max-width: 1200px; margin: 0 auto"></div>


<footer class="container">
      <p>&copy; Missael Hernandez Rosado 2017-2018</p>
    </footer>
</body>
</html>



<script>
//==================================SCRIPTS GRAPHICS AND IMPORT DATA D3.JS  HIGHCHARTS======================================//

//Variables container definition data
var dataset;
var idData = [];
var tipoData = [];
var operacionData = [];
var provinciaData = [];
var superficieData = [];
var precio_ventaData = [];
var dataVenta = [];
var arrayVenta = [];
var dataAlquiler = [];
var arrayAlquiler = [];

d3.json ("http://localhost:8080/spring-rest-server/inmuebles/listar", function(data) {
		

	//Total data JSON
 	console.log(data);
	//
    dataset = data["data"];
    console.log(dataset);
   
	
	//function access container data 

	//Data
   dataset.forEach(function(elemento, index, arreglo){
      idData[index] = elemento.id;
      tipoData[index] = elemento.tipo;
      operacionData[index] = elemento.operacion;
      provinciaData[index] = elemento.provincia;
      superficieData[index] = elemento.superficie;
      precio_ventaData[index] = elemento.precio_venta;
      
   });
	
   //min-max
     var maxPrecio = Math.max.apply(null, precio_ventaData);
	
   //filter count tipoData
    //parking 
    var parking = (tipoData.filter(number => number=="Parking" )).length;
    console.log("Parkings: "+parking)
    //Local
    var local = (tipoData.filter(number => number=="Local" )).length;
    console.log("Locales: "+local)
    //Oficina 
    var oficina = (tipoData.filter(number => number=="Oficina" )).length;
    console.log("Oficinas: "+oficina)
    //Suelo
    var suelo = (tipoData.filter(number => number=="Suelo" )).length;
    console.log("Suelos: "+suelo)
    //Industrial
    var industrial = (tipoData.filter(number => number=="Industrial" )).length;
    console.log("Industriales: "+industrial)
    //Piso
    var piso = (tipoData.filter(number => number=="Piso" )).length;
    console.log("Pisos: "+piso)
    //Casa
    var casa = (tipoData.filter(number => number=="Casa" )).length;
    console.log("Casas: "+casa)
    
    //filter count operacionData
    //Piso
    var alquiler = (operacionData.filter(number => number=="Alquiler" )).length;
    console.log("Alquiler: "+alquiler)
    //Casa
    var venta = (operacionData.filter(number => number=="Venta" )).length;
    console.log("Ventas: "+venta)
    
    //filter count provinciaData
    //Lleida
    var lleida = (provinciaData.filter(number => number=="Lleida" )).length;
    console.log("Lleida: "+lleida)
    //Girona
    var girona = (provinciaData.filter(number => number=="Girona" )).length;
    console.log("Girona: "+girona)
    //Torragona
    var tarragona = (provinciaData.filter(number => number=="Tarragona" )).length;
    console.log("Tarragona: "+tarragona)
    //Barcelona
    var barcelona = (provinciaData.filter(number => number=="Barcelona" )).length;
    console.log("Barcelona: "+barcelona)
    
   
    //Precio y tipo
    
    dataVenta = (dataset.filter(number => number.operacion=="Venta" ));
    console.log(dataVenta);
    dataVenta.forEach(function(elemento, index, arreglo){
        arrayVenta[index] = elemento.precio_venta;       
     });
    console.log(arrayVenta);
    
    var dataAlquiler = (dataset.filter(number => number.operacion=="Alquiler" ));
    console.log(dataAlquiler);
    dataAlquiler.forEach(function(elemento, index, arreglo){
        arrayAlquiler[index] = elemento.precio_venta;       
     });
    console.log(arrayAlquiler);
    
	//View console browser
   console.log(idData);
   console.log(tipoData);
   console.log(operacionData);
   console.log(provinciaData); 
   console.log(superficieData);
   console.log(precio_ventaData);
   console.log(maxPrecio);

   
   //--------------------//

   //Create graph
   
   //Graphic Tipos de inmuebles
   Highcharts.chart('g1', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'Tipos de Inmuebles'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.y}</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Valores',
        colorByPoint: true,
        data: [{
            name: 'Parking',
            y: parking
        }, {
            name: 'Local',
            y: local
        }, {
            name: 'Oficina',
            y: oficina
        }, {
            name: 'Suelo',
            y: suelo
        }, {
            name: 'Industrial',
            y: industrial
        }, {
            name: 'Piso',
            y: piso
        },{
            name: 'Casa',
            y: casa
        }
        ]
    }]
});  //End graphic tipo inmueble
   
   
   // Graphic operacion inmueble
Highcharts.chart('g2', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: 0,
        plotShadow: false
    },
    title: {
        text: 'Oferta Inmuebles',
        align: 'center',
        verticalAlign: 'middle',
        size: 25,
        y: 50
    },
    tooltip: {
        pointFormat: '{series.name}:{point.y}'
    },
    plotOptions: {
        pie: {
            dataLabels: {
                enabled: true,
                distance: -50,
                style: {
                    fontWeight: 'bold',
                    color: 'white'
                }
            },
            startAngle: -90,
            endAngle: 90,
            center: ['50%', '75%']
        }
    },
    series: [{
        type: 'pie',
        name: 'Disponibles',
        innerSize: '50%',
        data:
        	 [{
                 name: 'Venta',
                 y: venta
             }, {
                 name: 'Alquiler',
                 y: alquiler
             }
        ]
    }]
});
    //End graphic operacion inmueble
 
    //Graphic provincia inmueble
    
   Highcharts.chart('g3', {
    chart: {
        type: 'column'
        
    },
    title: {
        text: 'Localizacion Inmuebles'
    },
    xAxis: {
        type: 'category',
        labels: {
            rotation: -45,
            style: {
                fontSize: '13px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    },
    yAxis: {
        min: 0,
        title: {
            text: 'Disponibles'
        }
    },
    legend: {
        enabled: false
    },
    tooltip: {
        pointFormat: 'Disponibles: <b>{point.y}</b>'
    },
    series: [{
        name: 'Disponibles',
        data: [
            ['Lleida', lleida],
            ['Girona', girona],
            ['Tarragona', tarragona],
            ['Barcelona', barcelona]
        ],
        dataLabels: {
            enabled: true,
            rotation: -90,
            color: 'black',
            align: 'right',
            format: '{point.y}', 
            y: 5,
            style: {
                fontSize: '12px',
                fontFamily: 'Verdana, sans-serif'
            }
        }
    }]
});   //End graphic provincia inmueble
   
   
   // Graphic precios venta-alquiler
   
Highcharts.chart('g4', {

    title: {
        text: 'Precios Inmuebles'
    },
    subtitle: {
        text: 'Venta-Alquiler'
    },
    xAxis: {
        tickInterval: 1
    },

    yAxis: {
        type: 'logarithmic',
        minorTickInterval: 0.1
    },

    tooltip: {
        headerFormat: '<b>{series.name}</b><br/>',
        pointFormat: '<b>Costo: $</b><b>{point.y}</b>'
    },

    series: [{
        data: arrayVenta,
        pointStart: 1
    },{
       data: arrayAlquiler,
       pointStart: 2
    	
    }
    
    ]
}); //End graphic precios venta-alquiler
   
   
//Graphic supericie m2

Highcharts.chart('g5', {

    title: {
        text: 'Superficie Inmuebles'
    },
    subtitle: {
        text: 'm2'
    },
    xAxis: {
        tickInterval: 1
    },

    yAxis: {
        type: 'logarithmic',
        minorTickInterval: 0.1
    },

    tooltip: {
        headerFormat: '<b>{series.name}</b><br/>',
        pointFormat: '<b>Superficie: </b><b>{point.y}m2</b>'
    },

    series: [{
        data: superficieData,
        pointStart: 1
    }]
}); //End graphic supercie m2
   
   
   //End
});

//==================================END SCRIPTS GRAPHICS AND IMPORT DATA D3.JS  HIGHCHARTS======================================//
</script>

