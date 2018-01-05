package com.missaelhr.rest.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Service;

import com.missaelhr.rest.domain.Person;

@Service("personService") //nombre del servicio
public class PersonService {

	protected static Logger logger = Logger.getLogger("service");    
	@SuppressWarnings("unused")
	private List <Person> persons = new ArrayList <Person>();
	
	    // Datos de conexion con la base de datos
		  public DataSource configureDataSource() {
		    	 DriverManagerDataSource dataSource = new DriverManagerDataSource();
		    	    dataSource.setDriverClassName("org.gjt.mm.mysql.Driver"); //Driver mysql
		    	    dataSource.setUrl("jdbc:mysql://localhost:3306/inmueblesdb"); //url donde se localiza la bd
		    	    dataSource.setUsername("root"); //nombre usuario
		    	    dataSource.setPassword("");  //password usuario
		    	return dataSource;    	
		    } 
	  
    //RECUPERA TODOS LOS CAMPOS DE LA BD
	@SuppressWarnings({ "unchecked" })
    @Consumes({MediaType.APPLICATION_JSON})
    @Produces({MediaType.APPLICATION_JSON})
	public List <Person> getAll(){
    logger.debug("Recuperar todas los campos");
    JdbcTemplate jdbcTemplate = new JdbcTemplate(configureDataSource()); //llama a la conexion con la bd
    String select = "select * from  data order by id"; //execute query
 
	return persons = jdbcTemplate.query(select, new RowMapper() { 
        public Object mapRow(ResultSet rs, int arg1) throws SQLException {
                 // Se rellena un bean Persona a partir de la fila actual del ResultSet
                        Person p = new Person();
        	            p.setId(rs.getInt("id"));
                        p.setTipo(rs.getString("tipo"));
                        p.setOperacion(rs.getString("operacion"));
                        p.setProvincia(rs.getString("provincia"));
                        p.setSuperficie(rs.getInt("superficie"));
                        p.setPrecio_venta(rs.getInt("precio_venta"));                           				
                        return p;                                          
     
        }});
	}
}
