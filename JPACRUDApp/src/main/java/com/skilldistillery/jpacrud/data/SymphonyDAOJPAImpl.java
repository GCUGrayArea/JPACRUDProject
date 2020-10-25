package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Symphony;

@Transactional
@Service
public class SymphonyDAOJPAImpl implements SymphonyDAO {
	
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public Symphony findById(int id) {
		
		String query = "SELECT s FROM Symphony s WHERE id = :id";
		return em
			.createQuery(query , Symphony.class)
			.setParameter("id" , id)
			.getSingleResult();
		
	}
	
	@Override
	public List<Symphony> findAll() {
		
		String query = "SELECT s FROM Symphony s";
		
		return em
			.createQuery(query)
			.getResultList();
		
	}

	@Override
	public List<Symphony> findByKey(String key) {
		
		String query = "SELECT s FROM Symphony s WHERE key = :key";
		return em
			.createQuery( query )
			.setParameter("key" , key)
			.getResultList();
		
	}

	@Override
	public List<Symphony> findByComposer(String composer) {
		
		String query = "SELECT s FROM Symphony s WHERE composer = :composer";
		return em
			.createQuery( query )
			.setParameter( "composer" , composer )
			.getResultList();
			
	}

	@Override
	public List<Symphony> findByMovements( byte movements ) {
		
		String query = "SELECT s FROM Symphony s WHERE movements = :movements";
		return em
			.createQuery( query )
			.setParameter( "movements" , movements )
			.getResultList();
		
	}

	@Override
	public boolean deleteById(int id) {
		
		em.remove( em.find( Symphony.class , id ) );
		em.getTransaction().commit();
		
		return em.find( Symphony.class , id ) == null;
		
	}

	@Override
	public boolean updateSymphony(Symphony symphony) {
		
		String update = "UPDATE Symphony s SET " +
				"name = :name , composer = :composer , " +
				"key = :key , movements = :movements " +
				"WHERE id = :id";
		
		em
		.createQuery( update )
		.setParameter("name", symphony.getName() )
		.setParameter("composer", symphony.getComposer() )
		.setParameter("key", symphony.getMusicalKey() )
		.setParameter("movements", symphony.getMovements() )
		.setParameter("id" , symphony.getId() )
		.executeUpdate();
		
		em.getTransaction().commit();
		
		return symphony.equals( em.find(Symphony.class , symphony.getId()));
		
	}

	@Override
	@Transactional
	public Symphony addSymphony(Symphony symphony) {
		
//		String query = "INSERT INTO symphony ( name , composer , musical_key , movements ) VALUES ( :name , :composer , :musical_key , :movements )";
//		em
//		.createQuery(query)
//		.setParameter( "name" , symphony.getName() )
//		.setParameter( "composer" , symphony.getComposer() )
//		.setParameter("musical_key", symphony.getMusicalKey() )
//		.setParameter("movements", symphony.getMovements() )
//		.executeUpdate();
		em.persist(symphony);
		em.flush();
		
		return symphony;
		
	}

}
