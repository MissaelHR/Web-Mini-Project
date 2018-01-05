package com.missaelhr.rest.domain;

import org.codehaus.jackson.annotate.JsonTypeName;

@JsonTypeName("persons")
public class Person {

	int id;
	String tipo;
	String operacion;
	String provincia;
	int superficie;
	int precio_venta;

	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public String getOperacion() {
		return operacion;
	}
	public void setOperacion(String operacion) {
		this.operacion = operacion;
	}
	public String getProvincia() {
		return provincia;
	}
	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}
	public int getSuperficie() {
		return superficie;
	}
	public void setSuperficie(int superficie) {
		this.superficie = superficie;
	}
	public int getPrecio_venta() {
		return precio_venta;
	}
	public void setPrecio_venta(int precio_venta) {
		this.precio_venta = precio_venta;
	}


	@Override
	public String toString() {
		return "VOUsuario [id=" + id + ", tipo=" + tipo + ", operacion=" + operacion + ", provincia=" + provincia
				+ ", superficie=" + superficie + ", precio_venta=" + precio_venta + "]";
	}
	

	
	
	
}
