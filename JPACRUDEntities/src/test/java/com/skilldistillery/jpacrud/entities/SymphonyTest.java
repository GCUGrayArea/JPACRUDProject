package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.*;

import org.junit.jupiter.api.*;

class SymphonyTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	
	@BeforeAll
	static void initialSetup() throws Exception {
		emf = Persistence.createEntityManagerFactory("SymphonyDB");
	}
	
	@AfterAll
	static void finalTearDown() throws Exception {
		emf = null;
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em = null;
	}

	@Test
	void testSymphonyBindings() {
		
		Symphony s = em.find( Symphony.class, 1 );
		
		assertNotNull(s);
		assertEquals(1, s.getId() );
		assertEquals("Symphony No. 2 \"Resurrection\"", s.getName() );
		assertEquals("Gustav Mahler", s.getComposer() );
		assertEquals("C minor" , s.getMusicalKey() );
		
	}

}
