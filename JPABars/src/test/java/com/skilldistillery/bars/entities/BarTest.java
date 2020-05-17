package com.skilldistillery.bars.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;


class BarTest {
	
	
	private static EntityManagerFactory emf;
	private static EntityManager em;
	private static Bar bar;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("BarsPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		bar = em.find(Bar.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		bar = null;
	}

	@Test
	void test() {
		assertNotNull(bar);
		assertEquals("Outer", bar.getName());
		assertEquals("Kochi", bar.getCity());
		assertEquals("Japan", bar.getCountry());
		assertEquals(10, bar.getRating());
		assertEquals("Yes", bar.getBlackedOutAt());
		assertEquals("2020-01-01", bar.getCreated().toString());
		assertEquals("Dancing, DJing", bar.getActivities());
		assertEquals("Small dance floor, one room bar", bar.getOtherComments());
		assertEquals("https://imgur.com/a/coyiGDb", bar.getPicture());
	}

}
