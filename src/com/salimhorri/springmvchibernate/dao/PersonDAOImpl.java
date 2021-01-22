package com.salimhorri.springmvchibernate.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.salimhorri.springmvchibernate.entities.Person;

@Repository
public class PersonDAOImpl implements PersonDAO {
// Begin Class
	
	// need to inject dependencies
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public List<Person> getPersons() {
	// Begin getPersons()
		
		// Create session
		Session session = sessionFactory.getCurrentSession();
		
		// Create a query
		Query<Person> query = session.createQuery("FROM Person",Person.class);
		
		// Execute query and get result list
		List<Person> list = query.getResultList();
		
		return list;
	// End getPersons()
	}
	
	@Transactional
	@Override
	public void insert(Person person) {
	// Begin insert()
		
		Session session = sessionFactory.getCurrentSession();
		
		session.save(new Person(person.getFname(), person.getLname(), person.getEmail(), person.getPassword()));
		
	// End insert()
	}
	
// End Class
}
