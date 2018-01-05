package com.missaelhr.java.test;

import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import com.missaelhr.rest.domain.Person;
import com.missaelhr.rest.domain.PersonList;
import com.missaelhr.rest.service.PersonService;

@RunWith(MockitoJUnitRunner.class)
public class TestPersonService {
	
	private static final int ID = 1;
    private static final String TIPO = "Parking";
    private static final String OPERACION = "Venta";
    private static final int SUPERFICIE = 4500;
    private static final int PRECIO_VENTA = 338500;
    
    private Person person;
 
    @InjectMocks
    private PersonService service = new PersonService();
    
    @Mock
    private PersonList personList;
 
    @Before
    public void prepare() {
    	person = new Person();
    	person.setId(ID);
    	person.setTipo(TIPO);
    	person.setOperacion(OPERACION);
    	person.setSuperficie(SUPERFICIE);
    	person.setPrecio_venta(PRECIO_VENTA); 
    	
    	List <Person> data = new ArrayList <Person>();
    	data.add(person);
    	
    	//getTodos
    	when(personList.getData()).thenReturn(data);
    }
    
    
    @Test
    public void testGetAll () {
    	List <Person> data = service.getAll();
    	
    	Assert.assertNotNull(data);
    	Assert.assertTrue(data.size() > 0);
    	Assert.assertEquals(data.get(0).getTipo(),TIPO);
    } 

	

}
