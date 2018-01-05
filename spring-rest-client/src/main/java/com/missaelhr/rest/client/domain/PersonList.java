package com.missaelhr.rest.client.domain;

import java.util.List;

import org.codehaus.jackson.annotate.JsonTypeName;

@JsonTypeName("persons")
public class PersonList {
	
	private List <Person> data;

	public List<Person> getData() {
		return data;
	}

	public void setData(List<Person> data) {
		this.data = data;
	}

}
