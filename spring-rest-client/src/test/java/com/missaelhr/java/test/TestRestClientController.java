package com.missaelhr.java.test;

import org.junit.BeforeClass;
import org.junit.Test;

import com.jayway.restassured.RestAssured;

import static com.jayway.restassured.RestAssured.given;
public class TestRestClientController {

	  @BeforeClass
	    public static void setup() {
	        String port = System.getProperty("server.port");
	        if (port == null) {
	            RestAssured.port = Integer.valueOf(8080);
	        }
	        else{
	            RestAssured.port = Integer.valueOf(port);
	        }

	        String basePath = System.getProperty("server.base");
	        if(basePath==null){
	            basePath = "/spring-rest-client/";
	        }
	        RestAssured.basePath = basePath;

	        String baseHost = System.getProperty("server.host");
	        if(baseHost==null){
	            baseHost = "http://localhost";
	        }
	        RestAssured.baseURI = baseHost;

	    }
	
	  
	  @Test 
	    public  void  TestConnectionDataTable ()  { 
	        given (). when (). get ( "/inmuebles/listall" ). then (). statusCode ( 200 ); 
	    }
	  
	  @Test 
	    public  void  TestConnectionGraphics ()  { 
	        given (). when (). get ( "/inmuebles/graphics" ). then (). statusCode ( 200 ); 
	    }
	  
	  
	  
	
	  
}
