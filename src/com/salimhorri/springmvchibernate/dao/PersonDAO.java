package com.salimhorri.springmvchibernate.dao;

import java.util.List;

import com.salimhorri.springmvchibernate.entities.Person;

public interface PersonDAO {
// Begin Interface
	
	public List<Person> getPersons();
	public void insert(Person person);
	
// End Interface
}
